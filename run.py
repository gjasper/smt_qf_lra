from pysmt.shortcuts import get_env
from pysmt.logics import QF_LRA
from pysmt.smtlib.parser import SmtLibParser
import prop
import os
import sys

script = SmtLibParser().get_script_fname(sys.argv[1])
formula = script.get_last_formula()

print("sat" if prop.is_sat(formula) else "unsat")