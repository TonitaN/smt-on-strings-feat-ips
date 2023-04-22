(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun q () String)
(declare-fun w () String)
(declare-fun x () String)

(assert (= w (str.++ "bc" x "bc") ))
(assert (= w (str.replace_all q "aba" "acc" ) ))
(assert (= q (str.replace_all x "ab" "a" ) ))

(check-sat)
