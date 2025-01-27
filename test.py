from pysmt.smtlib.parser import SmtLibParser
from pysmt.shortcuts import get_env
from pysmt.logics import QF_LRA
import prop

def run(file_path):
    print("running: {}".format(file_path))
    script = SmtLibParser().get_script_fname(file_path)
    formula = script.get_last_formula()
    return "sat" if prop.is_sat(formula) else "unsat"

def test_samples():

    get_env().factory.add_generic_solver("cvc5", \
                                    "/opt/cvc5-Linux-static-1.2.0/bin/cvc5", \
                                [QF_LRA])

    assert run('problems/QF_LRA_examples/Arthan1A-chunk-0015.smt2') == 'sat'
    assert run('problems/QF_LRA_examples/asin-8-chunk-0030.smt2') == 'sat'
    assert run('problems/QF_LRA_examples/asin-8-vars4-chunk-0022.smt2') == 'unsat'
    assert run('problems/QF_LRA_examples/atan-problem-1-chunk-0014.smt2') == 'unsat'
    assert run('problems/QF_LRA_examples/atan-problem-1-weak-chunk-0019.smt2') == 'sat'
    assert run('problems/QF_LRA_examples/atan-problem-2-weak-chunk-0203.smt2') == 'sat'
    assert run('problems/QF_LRA_examples/atan-problem-2-weak2-chunk-0004.smt2') == 'sat'
    assert run('problems/QF_LRA_examples/bignum_lra1.smt2') == 'sat'
    assert run('problems/QF_LRA_examples/bottom-plate-mixer-chunk-0005.smt2') == 'sat'
    assert run('problems/QF_LRA_examples/bouncing-ball-inv-node1886.smt2') == 'unsat'
    assert run('problems/QF_LRA_examples/bouncing-ball-simple-node1628.smt2') == 'unsat'
    assert run('problems/QF_LRA_examples/cbrt-problem-3-chunk-0006.smt2') == 'unsat'
    assert run('problems/QF_LRA_examples/cbrt-problem-3-weak-chunk-0012.smt2') == 'unsat'
    assert run('problems/QF_LRA_examples/Chua-1-IL-L-chunk-0005.smt2') == 'sat'
    assert run('problems/QF_LRA_examples/Chua-1-VC1-L-chunk-0005.smt2') == 'sat'
    assert run('problems/QF_LRA_examples/Chua-1-VC1-U-chunk-0035.smt2') == 'sat'
    assert run('problems/QF_LRA_examples/Chua-2-IL-L-chunk-0030.smt2') == 'sat'
    assert run('problems/QF_LRA_examples/Chua-2-VC1-L-chunk-0046.smt2') == 'sat'
    assert run('problems/QF_LRA_examples/CMOS-opamp-chunk-0005.smt2') == 'sat'
    assert run('problems/QF_LRA_examples/division_dijkstra-node701.smt2') == 'unsat'
    assert run('problems/QF_LRA_examples/integer_cubic_root_knuth-node1362.smt2') == 'unsat'
    assert run('problems/QF_LRA_examples/log-fun-ineq-g-chunk-0010.smt2') == 'unsat'
    assert run('problems/QF_LRA_examples/polypaver-bench-exp-3d-chunk-0017.smt2') == 'sat'
    assert run('problems/QF_LRA_examples/sin-344-3-chunk-0012.smt2') == 'sat'
    assert run('problems/QF_LRA_examples/sin-344-3-weak-chunk-0012.smt2') == 'sat'
    assert run('problems/QF_LRA_examples/sin-cos-346-b-chunk-0008.smt2') == 'sat'
    assert run('problems/QF_LRA_examples/sin-problem-7-chunk-0004.smt2') == 'sat'
    assert run('problems/QF_LRA_examples/sin-problem-7-weak-chunk-0004.smt2') == 'sat'
    assert run('problems/QF_LRA_examples/sin-problem-7-weak2-chunk-0004.smt2') == 'sat'
    assert run('problems/QF_LRA_examples/sin-problem-8-chunk-0011.smt2') == 'sat'
    assert run('problems/QF_LRA_examples/sin-problem-8-weak-chunk-0008.smt2') == 'sat'
    assert run('problems/QF_LRA_examples/sqrt-1mcosq-7-chunk-0004.smt2') == 'sat'
    assert run('problems/QF_LRA_examples/sqrt-1mcosq-8-chunk-0010.smt2') == 'sat'
    assert run('problems/QF_LRA_examples/sqrt-problem-12vars3-chunk-0018.smt2') == 'sat'
    assert run('problems/QF_LRA_examples/sqrt-problem-Melquiond2-chunk-0027.smt2') == 'unsat'
    assert run('problems/QF_LRA_examples/square_root_zuse-node902.smt2') == 'unsat'