(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun x () String)
(declare-fun f () String)
(declare-fun xw () String)
(declare-fun m () String)

(assert (= xw (str.replace_all x "a" "ba" ) ))
(assert (= f (str.++ m xw "bb") ))
(assert (= f (str.replace_all x "bbb" "bb" ) ))

(check-sat)
