from pysmt.shortcuts import get_env
from pysmt.logics import QF_LRA
from pysmt.smtlib.parser import SmtLibParser
import prop
import sys

script = SmtLibParser().get_script_fname(sys.argv[1])
formula = script.get_last_formula()

get_env().factory.add_generic_solver("cvc5", \
                                "/opt/cvc5-Linux-static-1.2.0/bin/cvc5", \
                            [QF_LRA])

print("sat" if prop.is_sat(formula) else "unsat")