from pysat.formula import CNF
from pysat.solvers import Solver
from sympy import sympify, to_cnf

import theory
import util

def is_prop_sat(formula, f, atom_map):

    f_expr = sympify(f)
    f_cnf = str(to_cnf(f_expr))

    s_clauses = f_cnf.replace('v', '')

    clauses = []
    for s_clause in s_clauses.split(' & '):
        clause = []
        print(s_clause)
        for lit in util.trim(s_clause).split(' | '):
            clause.append(int(lit))
        clauses.append(clause)

    cnf_formula = CNF(from_clauses=clauses)
    with Solver(bootstrap_with = cnf_formula) as solver:
        isSAT = solver.solve()
        model = solver.get_model()
        print("{} is {}".format(s_clauses, "SAT" if isSAT else "UNSAT"))
        print("Model: {}".format(solver.get_model()))

        theory.is_theory_sat(formula, atom_map, model)