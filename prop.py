from pysmt.rewritings import CNFizer
from pysmt.shortcuts import get_env
from pysat.solvers import Solver
from pysmt.logics import QF_LRA
from pysat.formula import CNF

import theory
import util

def is_sat(formula):

    atom_map = {}

    conv = CNFizer()
    cnf_formula = conv.convert_as_formula(formula)
    string_formula = cnf_formula.serialize()

    for atom in cnf_formula.get_atoms():
        s_atom = str(atom)
        atom_map[s_atom] = len(atom_map) + 1
        string_formula = string_formula.replace(s_atom, str(atom_map[s_atom]))

    theory_atoms = [atom for atom in atom_map if 'FV' not in atom]

    string_formula = string_formula.replace(" | (", " | ") \
                                    .replace(") | ", " | ") \
                                    .replace("(((", "((") \
                                    .replace(")))", "))") \
                                    .replace(")) &", ") &") \
                                    .replace("& ((", "& (") \
                                    .replace("! ", "-")

    get_env().factory.add_generic_solver("cvc5", \
                                     "/opt/cvc5-Linux-static-1.2.0/bin/cvc5", \
                                    [QF_LRA])

    string_formula = util.trim(string_formula)

    clauses = []
    for s_clause in string_formula.split(' & '):
        clause = []
        for lit in util.trim(s_clause).split(' | '):
            clause.append(int(lit))
        clauses.append(clause)

    is_prop_abstraction_sat = True

    while is_prop_abstraction_sat:
        solver_formula = CNF(from_clauses = clauses)
        with Solver(bootstrap_with = solver_formula) as solver:
            is_prop_abstraction_sat = solver.solve()
            if is_prop_abstraction_sat:
                model = solver.get_model()
                print("prop assignment: {}".format(model))
                if theory.is_theory_sat(formula, atom_map, theory_atoms, model):
                    break
                else:
                    invalid_model_blocking_clause = [(-1) * l for l in model]
                    clauses.append(invalid_model_blocking_clause)

    return is_prop_abstraction_sat