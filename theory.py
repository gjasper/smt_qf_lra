from pysmt.shortcuts import Not, Solver

def is_theory_sat(formula, atom_map, theory_atoms, assignment):

    with Solver(name = "cvc5", logic = "QF_LRA") as s:
        assertion = {}
        for atom in formula.get_atoms():
            if str(atom) in theory_atoms:
                if atom_map[str(atom)] in assignment:
                    assertion = assertion.And(atom) if assertion else atom
                else:
                    assertion = assertion.And(Not(atom)) if assertion else Not(atom)
        s.add_assertion(assertion)
        return s.solve()