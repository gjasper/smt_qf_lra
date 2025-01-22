from pysmt.smtlib.parser import SmtLibParser

import util
import prop
import sys

atom_map = {}

def get_expr(f):
    f = util.trim(f)
    bracket_count = 0
    for i in range(len(f)):
        c = f[i]
        if c == '(':
            bracket_count += 1
        if c == ')':
            bracket_count -= 1
        if c == '&' and bracket_count == 0:
            lhs = get_expr(f[:i-1])
            rhs = get_expr(f[i+2:])
            return '(' + lhs + ' & ' + rhs + ')'
        if c == '|' and bracket_count == 0:
            lhs = get_expr(f[:i-1])
            rhs = get_expr(f[i+2:])
            return '(' + lhs + ' | ' + rhs + ')'

    if f not in atom_map:
        atom_map[f] = len(atom_map) + 1

    return 'v' + str(atom_map[f])

script = SmtLibParser().get_script_fname(sys.argv[1])
formula = script.get_last_formula()
f = get_expr(str(formula))

print("SAT" if prop.is_sat(formula, f, atom_map) else "UNSAT")