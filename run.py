from pysmt.shortcuts import get_env
from pysmt.logics import QF_LRA
from pysmt.smtlib.parser import SmtLibParser
import prop
import os
import sys

script = SmtLibParser().get_script_fname(sys.argv[1])
formula = script.get_last_formula()

if 'CVC5_BIN_PATH' not in os.environ:
    raise Exception('CVC5_BIN_PATH envvar not defined')

get_env().factory.add_generic_solver("cvc5", \
                                     os.environ['CVC5_BIN_PATH'], \
                                     [QF_LRA])

print("sat" if prop.is_sat(formula) else "unsat")