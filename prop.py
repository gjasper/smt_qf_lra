from pysat.formula import CNF
from pysat.solvers import Solver
from sympy import sympify, to_cnf

import theory
import util

def is_sat(formula, f, atom_map):

    f_expr = sympify(f)
    f_cnf = str(to_cnf(f_expr))

    s_clauses = f_cnf.replace('v', '')

    clauses = []
    for s_clause in s_clauses.split(' & '):
        clause = []
        for lit in util.trim(s_clause).split(' | '):
            clause.append(int(lit))
        clauses.append(clause)

    is_prop_abstraction_sat = True

    while is_prop_abstraction_sat:
        cnf_formula = CNF(from_clauses = clauses)
        with Solver(bootstrap_with = cnf_formula) as solver:
            is_prop_abstraction_sat = solver.solve()
            if is_prop_abstraction_sat:
                model = solver.get_model()
                print("found propositional assignment: {}".format(model))
                if theory.is_theory_sat(formula, atom_map, model):
                    break
                else:
                    invalid_model_blocking_clause = [(-1) * l for l in model]
                    clauses.append(invalid_model_blocking_clause)

    return is_prop_abstraction_sat