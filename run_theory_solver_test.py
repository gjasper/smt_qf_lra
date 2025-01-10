from pysmt.shortcuts import get_env, Symbol, Real, LT, Not, Equals, Plus, Solver
from pysmt.typing import REAL
from pysmt.logics import QF_LRA

x = Symbol("x", REAL)
y = Symbol("y", REAL)
z = Symbol("z", REAL)
l1 = LT(x, Real(0))
l2 = LT(Real(0), x)
l3 = Equals(z, Real(0))
l4 = Equals(Plus(x, y), z)

get_env().factory.add_generic_solver("cvc5", \
                                     "/opt/cvc5-Linux-static-1.2.0/bin/cvc5", \
                                    [QF_LRA])

with Solver(name = "cvc5", logic = "QF_LRA") as s:
    s.add_assertion(Not(l1))
    s.add_assertion(l2)
    s.add_assertion(l3)
    s.add_assertion(l4)
    if s.solve():
        print("sat")
        print(s.get_model())
    else :
        print("unsat")