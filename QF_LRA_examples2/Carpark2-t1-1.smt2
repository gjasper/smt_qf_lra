(set-info :smt-lib-version 2.6)
(set-logic QF_LRA)
(set-info :source |
SAL benchmark suite.  Created at SRI by Bruno Dutertre, John Rushby, Maria
Sorea, and Leonardo de Moura.  Contact demoura@csl.sri.com for more
information.

This benchmark was automatically translated into SMT-LIB format from
CVC format using CVC Lite
|)
(set-info :category "industrial")
(set-info :status unsat)
(declare-fun x_0 () Bool)
(declare-fun x_1 () Bool)
(declare-fun x_2 () Bool)
(declare-fun x_3 () Bool)
(declare-fun x_4 () Bool)
(declare-fun x_5 () Bool)
(declare-fun x_6 () Bool)
(declare-fun x_7 () Bool)
(declare-fun x_8 () Bool)
(declare-fun x_9 () Real)
(declare-fun x_10 () Real)
(declare-fun x_11 () Bool)
(declare-fun x_12 () Real)
(declare-fun x_13 () Real)
(declare-fun x_14 () Real)
(declare-fun x_15 () Bool)
(declare-fun x_16 () Bool)
(declare-fun x_17 () Bool)
(declare-fun x_18 () Bool)
(declare-fun x_19 () Real)
(declare-fun x_20 () Bool)
(declare-fun x_21 () Real)
(declare-fun x_22 () Real)
(declare-fun x_23 () Bool)
(declare-fun x_24 () Bool)
(declare-fun x_25 () Bool)
(declare-fun x_26 () Real)
(declare-fun x_27 () Bool)
(declare-fun x_28 () Real)
(declare-fun x_29 () Real)
(declare-fun x_30 () Real)
(declare-fun x_31 () Bool)
(declare-fun x_32 () Bool)
(declare-fun x_33 () Bool)
(declare-fun x_34 () Real)
(declare-fun x_35 () Bool)
(declare-fun x_36 () Bool)
(declare-fun x_37 () Bool)
(declare-fun x_38 () Real)
(declare-fun x_39 () Bool)
(declare-fun x_40 () Bool)
(declare-fun x_41 () Bool)
(declare-fun x_42 () Bool)
(declare-fun x_43 () Bool)
(declare-fun x_44 () Bool)
(declare-fun x_45 () Bool)
(declare-fun x_46 () Bool)
(declare-fun x_47 () Bool)
(declare-fun x_48 () Real)
(declare-fun x_49 () Bool)
(declare-fun x_50 () Bool)
(declare-fun x_51 () Real)
(declare-fun x_52 () Bool)
(declare-fun x_53 () Real)
(declare-fun x_54 () Bool)
(declare-fun x_55 () Real)
(declare-fun x_56 () Bool)
(declare-fun x_57 () Bool)
(declare-fun x_58 () Real)
(declare-fun x_59 () Real)
(declare-fun x_60 () Bool)
(declare-fun x_61 () Real)
(declare-fun x_62 () Bool)
(declare-fun x_63 () Bool)
(declare-fun x_64 () Real)
(declare-fun x_65 () Real)
(declare-fun x_66 () Real)
(declare-fun x_67 () Real)
(declare-fun x_68 () Bool)
(declare-fun x_69 () Real)
(declare-fun x_70 () Real)
(declare-fun x_71 () Bool)
(declare-fun x_72 () Real)
(assert (let ((?v_34 (< x_12 20)) (?v_32 (< x_12 50)) (?v_62 (<= x_29 x_30)) (?v_25 (< x_13 x_14)) (?v_26 (= x_33 false)) (?v_0 (not x_15))) (let ((?v_24 (and ?v_0 x_16)) (?v_23 (= x_34 x_13)) (?v_63 (not x_36))) (let ((?v_68 (and x_35 ?v_63)) (?v_29 (and (= x_37 false) (= x_38 x_10))) (?v_67 (not x_31)) (?v_58 (not x_32))) (let ((?v_61 (and ?v_67 ?v_58)) (?v_3 (not x_40))) (let ((?v_5 (and x_39 ?v_3)) (?v_4 (not x_41))) (let ((?v_11 (and (and ?v_5 ?v_4) x_42)) (?v_6 (or x_39 x_40)) (?v_2 (not x_42)) (?v_7 (and x_39 x_40))) (let ((?v_12 (and (and ?v_7 x_41) ?v_2)) (?v_8 (or x_39 ?v_3)) (?v_14 (and (and ?v_5 x_41) ?v_2)) (?v_16 (and (and ?v_7 ?v_4) ?v_2))) (let ((?v_37 (or ?v_11 (and (or (or ?v_6 x_41) ?v_2) (or ?v_12 (and (or (or ?v_8 ?v_4) x_42) (or ?v_14 (and (or (or ?v_6 ?v_4) x_42) (or ?v_16 (and (and (and (and (or (or ?v_8 x_41) x_42) x_39) ?v_3) ?v_4) ?v_2))))))))) (?v_9 (and (and (and (= x_43 false) (= x_44 x_5)) (= x_45 x_6)) (= x_46 x_7))) (?v_55 (= x_48 x_10))) (let ((?v_60 (and (= x_47 false) ?v_55)) (?v_1 (not x_16))) (let ((?v_41 (or ?v_0 ?v_1)) (?v_39 (or x_15 ?v_1)) (?v_28 (not x_50))) (let ((?v_20 (and x_49 ?v_28)) (?v_45 (not x_23))) (let ((?v_56 (or ?v_45 x_24)) (?v_43 (< x_12 10)) (?v_30 (and x_15 x_16)) (?v_65 (= x_51 x_29)) (?v_46 (not x_24))) (let ((?v_50 (and x_23 ?v_46)) (?v_48 (= x_52 false)) (?v_40 (<= x_12 0)) (?v_19 (= x_53 x_12)) (?v_49 (and (= x_54 false) (= x_55 x_10))) (?v_54 (not x_57))) (let ((?v_47 (and x_56 ?v_54)) (?v_52 (= x_58 x_22)) (?v_70 (or x_31 x_32)) (?v_66 (= x_59 x_30)) (?v_64 (and (= x_60 false) (= x_61 x_10))) (?v_10 (= x_62 false)) (?v_51 (and (= x_63 false) (= x_64 x_10))) (?v_22 (= x_65 x_14)) (?v_31 (and x_49 x_50)) (?v_42 (not ?v_32)) (?v_44 (not ?v_34)) (?v_71 (not ?v_62)) (?v_21 (= x_33 true)) (?v_38 (not ?v_25)) (?v_69 (not x_20)) (?v_27 (not x_49)) (?v_13 (not x_39))) (let ((?v_15 (and ?v_13 ?v_3)) (?v_17 (and ?v_13 x_40))) (let ((?v_18 (ite ?v_11 4 (ite (and (and ?v_15 ?v_4) x_42) 4 (ite ?v_12 3 (ite (and (and ?v_17 x_41) ?v_2) 3 (ite ?v_14 2 (ite (and (and ?v_15 x_41) ?v_2) 2 (ite ?v_16 1 (ite (and (and ?v_17 ?v_4) ?v_2) 1 0))))))))) (?v_35 (not x_44)) (?v_33 (not x_46)) (?v_36 (not x_45)) (?v_57 (not x_47)) (?v_53 (not x_56)) (?v_59 (not x_35)) (?v_72 (not x_11))) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (not x_0) true) (not x_1)) (and (and (= x_2 x_5) (= x_3 x_6)) (= x_4 x_7))) (not x_8)) (= x_9 x_10)) ?v_72) true) (= x_12 0)) (= x_13 0)) (= x_14 0)) (and ?v_0 ?v_1)) (not x_17)) true) (not x_18)) (= x_19 x_10)) ?v_69) (= x_21 x_10)) (= x_22 0)) (and ?v_45 x_24)) (not x_25)) (= x_26 x_10)) (not x_27)) (= x_28 x_10)) (= x_29 0)) (= x_30 0)) (and x_31 ?v_58)) (or (or (or (or (or (or (or (or (and (and (and (and (and (and (and (and (and (and (and (and (= x_66 0) ?v_0) ?v_1) x_60) ?v_20) x_37) (= x_38 x_61)) ?v_21) ?v_9) ?v_10) (= x_65 x_61)) ?v_19) ?v_23) (and (and (and (and (and (and (and (and (and (and (and (and (= x_66 1) x_15) ?v_1) ?v_37) ?v_27) x_50) ?v_9) ?v_26) ?v_29) ?v_10) (= x_34 (+ x_13 (* (ite (= ?v_18 4) 20 (ite (= ?v_18 3) 10 (ite (= ?v_18 2) 5 (ite (= ?v_18 1) 2 1)))) 10)))) ?v_22) ?v_19)) (and (and (and (and (and (and (and (and (and (and (and (= x_66 2) ?v_24) ?v_25) ?v_20) ?v_21) x_37) (= x_38 (- x_14 x_13))) ?v_9) ?v_10) ?v_22) ?v_19) ?v_23)) (and (and (and (and (and (and (and (and (and (and (and (= x_66 3) ?v_24) ?v_38) ?v_31) x_37) (= x_38 0)) x_62) ?v_9) ?v_26) (= x_53 (- x_13 x_14))) ?v_22) ?v_23)) (and (and (and (and (and (and (and (and (and (and (and (= x_66 4) ?v_30) ?v_40) ?v_27) ?v_28) ?v_9) ?v_26) ?v_29) ?v_10) (= x_34 0)) (= x_53 0)) (= x_65 0))) (and (and (and (and (and (and (and (and (and (and (and (and (and (= x_66 5) ?v_30) ?v_42) ?v_31) x_43) ?v_35) x_45) ?v_33) ?v_26) ?v_29) ?v_10) (= x_53 (- x_12 50))) ?v_22) ?v_23)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= x_66 6) ?v_30) ?v_44) ?v_32) ?v_31) x_43) x_44) ?v_36) ?v_33) ?v_26) ?v_29) ?v_10) (= x_53 (- x_12 20))) ?v_22) ?v_23)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= x_66 7) ?v_30) (not ?v_43)) ?v_34) ?v_31) x_43) ?v_35) ?v_36) ?v_33) ?v_26) ?v_29) ?v_10) (= x_53 (- x_12 10))) ?v_22) ?v_23)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= x_66 8) (or (or x_15 x_16) (not x_60))) (or (or ?v_0 x_16) (not ?v_37))) (or ?v_39 ?v_38)) (or ?v_39 ?v_25)) (or ?v_41 (not ?v_40))) (or ?v_41 ?v_32)) (or (or ?v_41 ?v_34) ?v_42)) (or (or ?v_41 ?v_43) ?v_44)) ?v_26) ?v_9) ?v_29) ?v_10) (= x_49 x_15)) (= x_50 x_16)) ?v_22) ?v_19) ?v_23))) (or (or (or (or (and (and (and (and (and (and (and (and (= x_67 0) ?v_45) ?v_46) x_68) ?v_47) ?v_48) ?v_51) ?v_49) (= x_58 x_69)) (and (and (and (and (and (and (and (and (and (= x_67 1) ?v_50) ?v_57) ?v_55) ?v_47) x_63) (= x_64 x_22)) ?v_48) ?v_49) ?v_52)) (and (and (and (and (and (and (and (and (and (= x_67 2) ?v_50) x_47) ?v_53) x_57) x_54) (= x_55 x_48)) ?v_48) ?v_51) ?v_52)) (and (and (and (and (and (and (and (and (= x_67 3) ?v_45) x_24) ?v_53) ?v_54) x_52) ?v_51) ?v_49) ?v_52)) (and (and (and (and (and (and (and (and (and (and (= x_67 4) (or (or x_23 x_24) (not x_68))) (or (or ?v_56 x_47) (not ?v_55))) (or ?v_56 ?v_57)) (or x_23 ?v_46)) ?v_48) ?v_49) ?v_51) (= x_56 x_23)) (= x_57 x_24)) ?v_52))) (or (or (or (or (and (and (and (and (and (and (and (and (and (and (= x_70 0) x_31) ?v_58) x_20) x_71) ?v_59) ?v_63) ?v_64) ?v_60) (= x_51 x_72)) (= x_59 x_21)) (and (and (and (and (and (and (and (and (and (= x_70 1) ?v_61) ?v_71) ?v_59) x_36) x_60) (= x_61 (* (- x_29 x_30) 10))) ?v_60) ?v_65) ?v_66)) (and (and (and (and (and (and (and (and (= x_70 2) ?v_61) ?v_62) ?v_68) x_47) (= x_48 x_30)) ?v_64) ?v_65) ?v_66)) (and (and (and (and (and (and (and (and (and (= x_70 3) ?v_67) x_32) x_11) ?v_68) x_47) (= x_48 (+ x_29 10))) ?v_64) ?v_65) ?v_66)) (and (and (and (and (and (and (and (and (and (and (= x_70 4) (or (or (or ?v_67 x_32) ?v_69) (not x_71))) (or ?v_70 ?v_62)) (or ?v_70 ?v_71)) (or (or x_31 ?v_58) ?v_72)) ?v_60) ?v_64) (= x_35 x_31)) (= x_36 x_32)) ?v_65) ?v_66))) (or (not (<= x_59 0)) (not (<= x_30 0)))) (or (not x_4) (and (not x_3) (not x_2)))) (or (not x_7) (and (not x_6) (not x_5)))) (or ?v_46 ?v_45)) (or ?v_58 ?v_67)) (or ?v_63 ?v_59)) (or ?v_2 (and ?v_4 ?v_3))) (or ?v_33 (and ?v_36 ?v_35))) (or ?v_54 ?v_53)))))))))))))))))))
(check-sat)
(exit)
