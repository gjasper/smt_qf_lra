from pysmt.smtlib.parser import SmtLibParser
from pysmt.shortcuts import get_env
from pysmt.logics import QF_LRA
import prop

def run(file_path):
    print("running {}".format(file_path))
    script = SmtLibParser().get_script_fname(file_path)
    formula = script.get_last_formula()
    return "sat" if prop.is_sat(formula) else "unsat"

def test_samples():

    get_env().factory.add_generic_solver("cvc5", \
                                    "/opt/cvc5-Linux-static-1.2.0/bin/cvc5", \
                                [QF_LRA])

    assert run('QF_LRA_examples2/water_tank-node15243.smt2') == 'unsat'
    assert run('QF_LRA_examples2/water_tank-node17126.smt2') == 'unsat'
    assert run('QF_LRA_examples2/water_tank-node21443.smt2') == 'unsat'
    assert run('QF_LRA_examples2/water_tank-node23593.smt2') == 'unsat'
    assert run('QF_LRA_examples2/water_tank-node28604.smt2') == 'unsat'
    assert run('QF_LRA_examples2/water_tank-node28718.smt2') == 'unsat'
    # assert run('QF_LRA_examples2/windowreal-no_t_deadlock-1.smt2') == 'unsat'
    # assert run('QF_LRA_examples2/bottom-plate-mixer-chunk-0023.smt2') == 'unsat'
    # assert run('QF_LRA_examples2/clocksynchro_3clocks.worst_case_skew.base.smt2') == 'unsat'
    # assert run('QF_LRA_examples2/clocksynchro_4clocks.worst_case_skew.base.smt2') == 'unsat'
    # assert run('QF_LRA_examples2/clocksynchro_5clocks.worst_case_skew.base.smt2') == 'unsat'
    # assert run('QF_LRA_examples2/clocksynchro_6clocks.worst_case_skew.base.smt2') == 'unsat'
    # assert run('QF_LRA_examples2/clocksynchro_7clocks.worst_case_skew.base.smt2') == 'unsat'
    # assert run('QF_LRA_examples2/clocksynchro_8clocks.worst_case_skew.base.smt2') == 'unsat'
    # assert run('QF_LRA_examples2/clocksynchro_9clocks.worst_case_skew.base.smt2') == 'unsat'
    # assert run('QF_LRA_examples2/clocksynchro_10clocks.worst_case_skew.base.smt2') == 'unsat'
    # assert run('QF_LRA_examples2/constraints-cooking01.smt2') == 'sat'
    # assert run('QF_LRA_examples2/constraints-cooking02.smt2') == 'sat'
    # assert run('QF_LRA_examples2/constraints-tempo-depth-2.smt2') == 'sat'
    # assert run('QF_LRA_examples2/constraints-tempo-depth-3.smt2') == 'sat'
    # assert run('QF_LRA_examples2/constraints-tempo-matrix1x1.pddl.smt2') == 'sat'
    # assert run('QF_LRA_examples2/constraints-tempo-width-1.smt2') == 'sat'
    # assert run('QF_LRA_examples2/constraints-tempo-width-2.smt2') == 'sat'
    # assert run('QF_LRA_examples2/constraints-temporal-machine-shop-2-3-A03.smt2') == 'sat'
    # assert run('QF_LRA_examples2/constraints-tms-2-3-light-03.smt2') == 'sat'
    # assert run('QF_LRA_examples2/gasburner-prop3-1.smt2') == 'unsat'
    # assert run('QF_LRA_examples2/gasburner-prop3-2.smt2') == 'unsat'
    # assert run('QF_LRA_examples2/gasburner-prop3-3.smt2') == 'unsat'
    # assert run('QF_LRA_examples2/gasburner-prop3-4.smt2') == 'unsat'
    # assert run('QF_LRA_examples2/intersection-example-onelane.proof-node846.smt2') == 'unsat'
    # assert run('QF_LRA_examples2/intersection-example-simple.proof-node606.smt2') == 'unsat'
    # assert run('QF_LRA_examples2/intersection-example-simple.proof-node634.smt2') == 'unsat'
    # assert run('QF_LRA_examples2/pursuit-safety-1.smt2') == 'unsat'
    # assert run('QF_LRA_examples2/pursuit-safety-2.smt2') == 'unsat'
    # assert run('QF_LRA_examples2/simple_example_1-node2318.smt2') == 'unsat'
    # assert run('QF_LRA_examples2/sqrt-1mcosq-7-chunk-0107.smt2') == 'sat'
    # assert run('QF_LRA_examples2/sqrt-1mcosq-7-chunk-0108.smt2') == 'unsat'
    # assert run('QF_LRA_examples2/tgc_io-nosafe-1.smt2') == 'unsat'
    # assert run('QF_LRA_examples2/tgc_io-safe-1.smt2') == 'unsat'
    # assert run('QF_LRA_examples2/water_tank-node15243.smt2') == 'unsat'
    # assert run('QF_LRA_examples2/water_tank-node17126.smt2') == 'unsat'
    # assert run('QF_LRA_examples2/water_tank-node21443.smt2') == 'unsat'
    # assert run('QF_LRA_examples2/water_tank-node23593.smt2') == 'unsat'
    # assert run('QF_LRA_examples2/water_tank-node28604.smt2') == 'unsat'
    # assert run('QF_LRA_examples2/water_tank-node28718.smt2') == 'unsat'
    # assert run('QF_LRA_examples2/windowreal-no_t_deadlock-1.smt2') == 'unsat'