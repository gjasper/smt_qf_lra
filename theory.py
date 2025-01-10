from pysmt.shortcuts import get_env, Not, Solver
from pysmt.logics import QF_LRA

import util

def is_theory_sat(formula, atom_map, assignment):
    get_env().factory.add_generic_solver("cvc5", \
                                     "/opt/cvc5-Linux-static-1.2.0/bin/cvc5", \
                                    [QF_LRA])

    with Solver(name = "cvc5", logic = "QF_LRA") as s:
        for atom in formula.get_atoms():
            if atom_map[util.trim(str(atom))] in assignment:
                s.add_assertion(atom)
            else:
                s.add_assertion(Not(atom))
        if s.solve():
            print("theory is sat")
            print(s.get_model())
        else :
            print("unsat")

