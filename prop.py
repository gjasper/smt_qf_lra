from pysmt.rewritings import CNFizer
from pysat.formula import CNF

import pysat.solvers
import pysmt.shortcuts

def trim(expr):
    if expr[0] != '(':
        return expr
    if expr[len(expr) - 1] != ')':
        return expr

    bracket_count = 0
    for c in expr[:len(expr) - 1]:
        if c == '(':
            bracket_count += 1
        if c == ')':
            bracket_count -= 1
        if bracket_count == 0:
            return expr

    return expr[1:len(expr) - 1]

def is_theory_sat(formula, atom_map, theory_atoms, assignment):

    with pysmt.shortcuts.Solver(name = "cvc5", logic = "QF_LRA") as s:
        assertion = {}
        for atom in formula.get_atoms():
            if str(atom) in theory_atoms:
                if atom_map[str(atom)] in assignment:
                    assertion = assertion.And(atom) if assertion else atom
                else:
                    assertion = assertion.And(pysmt.shortcuts.Not(atom)) if assertion else pysmt.shortcuts.Not(atom)
        s.add_assertion(assertion)
        return s.solve()

def is_sat(formula):

    atom_map = {}

    conv = CNFizer()
    formula = conv.convert_as_formula(formula)
    string_formula = formula.serialize()

    atom_strings = [s_atom.serialize() for s_atom in formula.get_atoms()]
    atom_strings.sort(reverse = True, key = len)

    for s_atom in atom_strings:
        atom_map[s_atom] = len(atom_map) + 1
        string_formula = string_formula.replace(s_atom, str(atom_map[s_atom]))

    theory_atoms = [s_atom for s_atom in atom_map if 'FV' not in s_atom]
    theory_literals = [atom_map[s_atom] for s_atom in theory_atoms]

    # print("size: {}".format(len(theory_literals)))

    string_formula = string_formula.replace(" | (", " | ") \
                                    .replace(") | ", " | ") \
                                    .replace("(((", "((") \
                                    .replace(")))", "))") \
                                    .replace(")) &", ") &") \
                                    .replace("& ((", "& (") \
                                    .replace("! ", "-")

    string_formula = trim(string_formula)

    clauses = []
    for s_clause in string_formula.split(' & '):
        clause = []
        for lit in trim(s_clause).split(' | '):
            clause.append(int(lit))
        clauses.append(clause)

    is_prop_abstraction_sat = True

    while is_prop_abstraction_sat:
        solver_formula = CNF(from_clauses = clauses)
        with pysat.solvers.Solver(bootstrap_with = solver_formula) as solver:
            is_prop_abstraction_sat = solver.solve()
            if is_prop_abstraction_sat:
                model = solver.get_model()
                # t_model = list(filter(lambda l: abs(l) in theory_literals, model))
                # print("prop assignment: {}".format(t_model))
                if is_theory_sat(formula, atom_map, theory_atoms, model):
                    break
                else:
                    invalid_model_blocking_clause = [(-1) * l for l in model]
                    clauses.append(invalid_model_blocking_clause)

    return is_prop_abstraction_sat