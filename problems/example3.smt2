;; example . smt2
( set-logic QF_LRA )
( declare-fun x () Real )
( declare-fun y () Real )
( assert ( < x 0))
( assert ( > y 0))
( assert (= x y ))
( check-sat )
( get-model )