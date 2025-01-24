(set-info :smt-lib-version 2.6)
(set-logic QF_LRA)
(set-info :source |
The Formal Verification of a Reintegration Protocol. Author: Lee Pike. Website: http://www.cs.indiana.edu/~lepike/pub_pages/emsoft.html.

This benchmark was automatically translated into SMT-LIB format from
CVC format using CVC Lite
|)
(set-info :category "industrial")
(set-info :status unsat)
(declare-fun x_0 () Real)
(declare-fun x_1 () Real)
(declare-fun x_2 () Bool)
(declare-fun x_3 () Bool)
(declare-fun x_4 () Bool)
(declare-fun x_5 () Bool)
(declare-fun x_6 () Real)
(declare-fun x_7 () Real)
(declare-fun x_8 () Real)
(declare-fun x_9 () Real)
(declare-fun x_10 () Real)
(declare-fun x_11 () Real)
(declare-fun x_12 () Bool)
(declare-fun x_13 () Bool)
(declare-fun x_14 () Bool)
(declare-fun x_15 () Bool)
(declare-fun x_16 () Bool)
(declare-fun x_17 () Bool)
(declare-fun x_18 () Bool)
(declare-fun x_19 () Bool)
(declare-fun x_20 () Real)
(declare-fun x_21 () Real)
(declare-fun x_22 () Real)
(declare-fun x_23 () Bool)
(declare-fun x_24 () Real)
(declare-fun x_25 () Real)
(declare-fun x_26 () Real)
(declare-fun x_27 () Real)
(declare-fun x_28 () Bool)
(declare-fun x_29 () Real)
(declare-fun x_30 () Bool)
(declare-fun x_31 () Bool)
(declare-fun x_32 () Bool)
(declare-fun x_33 () Bool)
(declare-fun x_34 () Bool)
(declare-fun x_35 () Bool)
(declare-fun x_36 () Real)
(declare-fun x_37 () Real)
(declare-fun x_38 () Real)
(declare-fun x_39 () Real)
(declare-fun x_40 () Bool)
(declare-fun x_41 () Bool)
(declare-fun x_42 () Bool)
(declare-fun x_43 () Bool)
(declare-fun x_44 () Bool)
(declare-fun x_45 () Real)
(declare-fun x_46 () Real)
(declare-fun x_47 () Real)
(declare-fun x_48 () Real)
(declare-fun x_49 () Real)
(declare-fun x_50 () Real)
(declare-fun x_51 () Real)
(declare-fun x_52 () Real)
(declare-fun x_53 () Real)
(declare-fun x_54 () Bool)
(declare-fun x_55 () Real)
(declare-fun x_56 () Real)
(declare-fun x_57 () Real)
(assert (let ((?v_3 (- x_0 x_1)) (?v_33 (+ x_1 x_9)) (?v_76 (<= x_0 x_27)) (?v_56 (= x_28 x_16)) (?v_18 (= x_29 0)) (?v_19 (< x_0 x_11)) (?v_40 (= x_27 x_0)) (?v_66 (= x_29 2)) (?v_68 (= x_30 x_5)) (?v_69 (and (= x_31 x_3) (= x_32 x_4))) (?v_54 (= x_33 x_19)) (?v_55 (and (= x_34 x_17) (= x_35 x_18))) (?v_70 (= x_36 x_8)) (?v_71 (and (= x_37 x_6) (= x_38 x_7))) (?v_28 (= x_39 x_11)) (?v_53 (= x_40 x_2)) (?v_51 (= x_41 x_15)) (?v_52 (and (= x_42 x_13) (= x_43 x_14))) (?v_72 (= x_44 x_12)) (?v_77 (- x_45 x_1)) (?v_44 (= x_29 1)) (?v_48 (+ x_9 x_1)) (?v_43 (<= x_24 x_27))) (let ((?v_50 (= x_30 (or x_5 (and ?v_43 x_15)))) (?v_36 (<= x_21 ?v_33)) (?v_38 (<= x_22 ?v_33)) (?v_35 (<= x_21 x_9)) (?v_37 (<= x_22 x_9)) (?v_12 (not x_3)) (?v_58 (< x_21 x_0)) (?v_59 (= x_27 x_21)) (?v_13 (not x_4)) (?v_61 (< x_22 x_0)) (?v_62 (= x_27 x_22)) (?v_14 (not x_5)) (?v_78 (not ?v_76)) (?v_30 (not x_13)) (?v_32 (not x_14)) (?v_34 (not x_15))) (let ((?v_29 (not ?v_35))) (let ((?v_41 (and ?v_29 (<= x_21 x_27))) (?v_31 (not ?v_37))) (let ((?v_42 (and ?v_31 (<= x_22 x_27)))) (let ((?v_49 (and (= x_31 (or x_3 (and ?v_41 x_13))) (= x_32 (or x_4 (and ?v_42 x_14))))) (?v_39 (<= x_24 ?v_33)) (?v_64 (< x_24 x_0)) (?v_65 (= x_27 x_24)) (?v_45 (not ?v_36)) (?v_46 (not ?v_38)) (?v_4 (not (<= x_24 x_9)))) (let ((?v_7 (and ?v_4 ?v_43)) (?v_6 (not (<= x_25 x_9)))) (let ((?v_8 (and ?v_6 (<= x_25 x_27))) (?v_47 (not ?v_39)) (?v_0 (= x_6 0)) (?v_1 (= x_7 0)) (?v_2 (= x_8 0)) (?v_27 (= x_36 0)) (?v_17 (= x_36 3)) (?v_23 (= x_37 0)) (?v_15 (= x_37 3)) (?v_25 (= x_38 0)) (?v_16 (= x_38 3)) (?v_74 (not x_2)) (?v_57 (not x_17)) (?v_60 (not x_18)) (?v_63 (not x_19)) (?v_73 (= x_20 0)) (?v_9 (and (not (<= x_26 x_9)) (<= x_26 x_27))) (?v_20 (= x_37 (ite ?v_12 (ite (and ?v_41 (< x_6 3)) (+ x_6 1) x_6) x_6))) (?v_21 (= x_38 (ite ?v_13 (ite (and ?v_42 (< x_7 3)) (+ x_7 1) x_7) x_7)))) (let ((?v_22 (or x_3 ?v_15)) (?v_24 (or x_4 ?v_16)) (?v_26 (or x_5 ?v_17)) (?v_75 (= x_20 1)) (?v_5 (ite ?v_7 2 1)) (?v_10 (ite ?v_7 3 2)) (?v_11 (ite ?v_7 1 0)) (?v_67 (<= (ite x_19 (ite x_18 (ite x_17 3 2) x_46) (ite x_18 x_46 (ite x_17 1 0))) (* (* (ite x_5 (ite x_4 (ite x_3 0 1) x_47) (ite x_4 x_47 (ite x_3 2 3))) 1) (/ 1 2))))) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= x_29 2) (>= x_29 0)) (<= x_20 2)) (>= x_20 0)) (>= x_0 0)) (> x_1 0)) (>= x_1 0)) (or (or (or ?v_0 (= x_6 1)) (= x_6 2)) (= x_6 3))) (not (< x_6 0))) (<= x_6 3)) (or (or (or ?v_1 (= x_7 1)) (= x_7 2)) (= x_7 3))) (not (< x_7 0))) (<= x_7 3)) (or (or (or ?v_2 (= x_8 1)) (= x_8 2)) (= x_8 3))) (not (< x_8 0))) (<= x_8 3)) (>= x_9 0)) (not (<= x_10 (* x_1 3)))) (>= x_10 0)) (>= x_11 0)) (>= x_21 0)) (>= x_22 0)) (>= x_24 0)) (>= x_25 0)) (>= x_26 0)) (>= x_27 0)) (or (or (or ?v_27 (= x_36 1)) (= x_36 2)) ?v_17)) (not (< x_36 0))) (<= x_36 3)) (or (or (or ?v_23 (= x_37 1)) (= x_37 2)) ?v_15)) (not (< x_37 0))) (<= x_37 3)) (or (or (or ?v_25 (= x_38 1)) (= x_38 2)) ?v_16)) (not (< x_38 0))) (<= x_38 3)) (>= x_39 0)) (>= x_45 0)) (>= x_52 0)) (>= x_53 0)) (>= x_55 0)) (>= x_56 0)) (>= x_57 0)) ?v_74) ?v_12) ?v_13) ?v_14) ?v_0) ?v_1) ?v_2) (not (< x_9 0))) (< x_9 x_10)) (= x_11 (+ (+ x_9 x_10) x_1))) x_12) ?v_30) ?v_32) ?v_34) x_16) ?v_57) ?v_60) ?v_63) ?v_73) (not (<= x_0 x_21))) (not (<= x_21 ?v_3))) (not (<= x_0 x_22))) (not (<= x_22 ?v_3))) (= x_0 (ite (not (< x_9 x_1)) (+ x_10 x_1) x_1))) (not x_23)) ?v_4) ?v_6) (< x_24 x_25)) (< x_25 x_26)) (= x_46 (ite x_17 2 1))) (= x_47 (ite x_3 1 2))) (= x_48 ?v_5)) (= x_49 ?v_5)) (= x_50 (+ (ite ?v_9 (ite ?v_8 ?v_10 x_48) (ite ?v_8 x_48 ?v_11)) x_8))) (= x_51 (+ (ite ?v_9 (ite ?v_8 ?v_10 x_49) (ite ?v_8 x_49 ?v_11)) x_8))) (or (or (and (and (and (and (and (and (or (and (and (and (and (and (and (and (and (and (and ?v_18 ?v_19) ?v_40) ?v_20) ?v_21) (= x_36 (ite ?v_14 (ite (not (< x_50 3)) 3 x_50) x_8))) (= x_31 ?v_22)) (= x_32 ?v_24)) (= x_30 ?v_26)) ?v_53) ?v_28) (and (and (and (and (and (and (and (and (and (and ?v_18 (not ?v_19)) x_40) (= x_27 x_11)) ?v_20) ?v_21) (= x_36 (ite ?v_14 (ite (not (< x_51 3)) 3 x_51) x_8))) (= x_31 (or ?v_22 ?v_23))) (= x_32 (or ?v_24 ?v_25))) (= x_30 (or ?v_26 ?v_27))) ?v_28)) ?v_51) ?v_52) ?v_72) ?v_54) ?v_55) ?v_56) (and (and (and (and (and (and (and (or (and (and (and (and (and (and (and (and (and (and (and ?v_44 (or (or (and (and (and ?v_29 ?v_12) ?v_30) ?v_36) (and (and (and ?v_31 ?v_13) ?v_32) ?v_38)) (and (and ?v_14 ?v_34) ?v_39))) (not x_44)) (or (or (or (or ?v_35 ?v_45) x_13) x_3) (not (< x_27 x_21)))) (or (or (or (or ?v_37 ?v_46) x_14) x_4) (not (< x_27 x_22)))) (or (or (or ?v_47 x_15) x_5) (not (< x_27 x_24)))) (or (or (or (and (and (and (and ?v_30 ?v_12) ?v_36) ?v_58) ?v_59) (and (and (and (and ?v_32 ?v_13) ?v_38) ?v_61) ?v_62)) (and (and (and (and ?v_34 ?v_14) ?v_39) ?v_64) ?v_65)) (and (< x_0 ?v_48) ?v_40))) (= x_42 (or x_13 ?v_41))) (= x_43 (or x_14 ?v_42))) (= x_41 (or x_15 ?v_43))) ?v_49) ?v_50) (and (and (and (and (and (and (and (and (and ?v_44 (or (or (or ?v_35 x_13) x_3) ?v_45)) (or (or (or ?v_37 x_14) x_4) ?v_46)) (or (or x_15 x_5) ?v_47)) x_44) (= x_27 ?v_48)) ?v_49) ?v_50) ?v_51) ?v_52)) ?v_70) ?v_71) ?v_28) ?v_53) ?v_54) ?v_55) ?v_56)) (and (and (and (and (and (and (and (or (and (and (and (and (and (and (and (and (and (and (and ?v_66 ?v_67) (not x_28)) (or (or (or ?v_35 x_17) x_3) (<= x_27 x_21))) (or (or (or ?v_37 x_18) x_4) (<= x_27 x_22))) (or (or x_19 x_5) (<= x_27 x_24))) (or (or (or (and (and (and (and ?v_57 ?v_12) (< x_9 x_21)) ?v_58) ?v_59) (and (and (and (and ?v_60 ?v_13) (< x_9 x_22)) ?v_61) ?v_62)) (and (and (and ?v_63 ?v_14) ?v_64) ?v_65)) ?v_40)) (= x_34 (or x_17 (= x_21 x_27)))) (= x_35 (or x_18 (= x_22 x_27)))) (= x_33 (or x_19 (= x_24 x_27)))) ?v_68) ?v_69) (and (and (and (and (and (and (and ?v_66 (not ?v_67)) x_28) ?v_68) ?v_69) (= x_27 x_9)) ?v_54) ?v_55)) ?v_70) ?v_71) ?v_28) ?v_53) ?v_51) ?v_52) ?v_72))) (or (or (and ?v_73 (= x_29 (ite ?v_74 x_20 1))) (and ?v_75 (= x_29 (ite (not x_12) x_20 2)))) (and (and (not ?v_73) (not ?v_75)) (= x_29 x_20)))) (or (and (and ?v_76 (not (<= x_45 x_52))) (not (<= x_52 ?v_77))) (and ?v_78 (= x_52 x_21)))) (or (and (and ?v_76 (not (<= x_45 x_53))) (not (<= x_53 ?v_77))) (and ?v_78 (= x_53 x_22)))) (or (and (and ?v_76 (= x_45 (+ x_0 x_10))) x_54) (and (and ?v_78 (not x_54)) (= x_45 x_0)))) (or (and (and (and (and ?v_43 (not (<= x_55 x_27))) (not (<= x_56 x_27))) (< x_55 x_56)) (< x_56 x_57)) (and (and (and (not ?v_43) (= x_55 x_24)) (= x_56 x_25)) (= x_57 x_26)))) (or (and ?v_18 (or x_31 x_32)) (and ?v_73 (or x_3 x_4))))))))))))))
(check-sat)
(exit)
