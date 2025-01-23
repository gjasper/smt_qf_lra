from pysmt.smtlib.parser import SmtLibParser
import prop
import sys

script = SmtLibParser().get_script_fname(sys.argv[1])
formula = script.get_last_formula()

print("SAT" if prop.is_sat(formula) else "UNSAT")