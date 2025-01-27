import subprocess
import time

print('{},{},{},{},{}'.format('problem', 'cvc5_result', 'cvc5_time', 'my_result', 'my_time'))

def print_comparison(file_name) :

    start = time.time()

    cvc5_result = subprocess.run(
        ['timeout', '60s', 'cvc5', file_name],
        capture_output = True,
        text = True
    )

    cvc5_time = round((time.time() - start) * 1000)
    cvc5_output = cvc5_result.stdout.strip() if cvc5_result.stdout else 'timeout'

    start = time.time()

    my_result = subprocess.run(
        ['timeout', '60s', 'python3', 'run.py', file_name],
        capture_output = True,
        text = True
    )

    my_time = round((time.time() - start) * 1000)
    my_output = my_result.stdout.strip() if my_result.stdout else 'timeout'

    print_file_name = file_name.replace('problems/benchmark/sat/', '') \
                                .replace('problems/benchmark/unsat/', '')

    print('{},{},{},{},{}'.format(print_file_name, cvc5_output, cvc5_time, my_output, my_time))

# SAT instances
print_comparison('problems/benchmark/sat/bug339.smt2')
print_comparison('problems/benchmark/sat/constraints-tempo-depth-50.smt2')
print_comparison('problems/benchmark/sat/constraints-tempo-matrix5x5.pddl.smt2')
print_comparison('problems/benchmark/sat/constraints-temporal-machine-shop-2-3-A30.smt2')
print_comparison('problems/benchmark/sat/d100.3.smt2')
print_comparison('problems/benchmark/sat/d110.6.smt2')
print_comparison('problems/benchmark/sat/d120.7.smt2')
print_comparison('problems/benchmark/sat/d130.1.smt2')
print_comparison('problems/benchmark/sat/d40.5.smt2')
print_comparison('problems/benchmark/sat/d50.9.smt2')
print_comparison('problems/benchmark/sat/d70.3.smt2')
print_comparison('problems/benchmark/sat/d80.3.smt2')
print_comparison('problems/benchmark/sat/d90.7.smt2')
print_comparison('problems/benchmark/sat/fuzz_3_13.smt2')
print_comparison('problems/benchmark/sat/fuzz_3_1.smt2')
print_comparison('problems/benchmark/sat/fuzz_3_3.smt2')
print_comparison('problems/benchmark/sat/fuzz_3_4.smt2')
print_comparison('problems/benchmark/sat/fuzz_3_5.smt2')
print_comparison('problems/benchmark/sat/fuzz_3_6.smt2')
print_comparison('problems/benchmark/sat/fuzz_3_7.smt2')
print_comparison('problems/benchmark/sat/fuzz_5_2.smt2')
print_comparison('problems/benchmark/sat/ite2.smt2')
print_comparison('problems/benchmark/sat/ite-lift.smt2')
print_comparison('problems/benchmark/sat/miplibtrick.smtv1.smt2')
print_comparison('problems/benchmark/sat/p2-zenonumeric_s6.smt2')

# UNSAT instances
print_comparison('problems/benchmark/unsat/1_1.smt2')
print_comparison('problems/benchmark/unsat/1_3.smt2')
print_comparison('problems/benchmark/unsat/1_4.smt2')
print_comparison('problems/benchmark/unsat/2_1.smt2')
print_comparison('problems/benchmark/unsat/2_3.smt2')
print_comparison('problems/benchmark/unsat/2_4.smt2')
print_comparison('problems/benchmark/unsat/3_1.smt2')
print_comparison('problems/benchmark/unsat/3_3.smt2')
print_comparison('problems/benchmark/unsat/3_4.smt2')
print_comparison('problems/benchmark/unsat/4_1.smt2')
print_comparison('problems/benchmark/unsat/4_3.smt2')
print_comparison('problems/benchmark/unsat/4_4.smt2')
print_comparison('problems/benchmark/unsat/bug161.smtv1.smt2')
print_comparison('problems/benchmark/unsat/bug164.smtv1.smt2')
print_comparison('problems/benchmark/unsat/clocksynchro_2clocks.main_invar.induct.smt2')
print_comparison('problems/benchmark/unsat/clocksynchro_7clocks.main_invar.base.smt2')
print_comparison('problems/benchmark/unsat/ineq_basic.smtv1.smt2')
print_comparison('problems/benchmark/unsat/ineq_slack.smtv1.smt2')
print_comparison('problems/benchmark/unsat/intersection-example-onelane.proof-node846.smt2')
print_comparison('problems/benchmark/unsat/op_seen_less2.base.smt2')
print_comparison('problems/benchmark/unsat/pd_not_fs_seen.base.smt2')
print_comparison('problems/benchmark/unsat/pursuit-safety-11.smtv1.smt2')
print_comparison('problems/benchmark/unsat/pursuit-safety-12.smtv1.smt2')
print_comparison('problems/benchmark/unsat/simple_startup_9nodes.abstract.base.smtv1.smt2')
print_comparison('problems/benchmark/unsat/tgc_io-safe-13.smt2')
