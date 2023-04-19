(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun w () String)
(declare-fun z () String)
(declare-fun x () String)
(declare-fun l () String)

(assert (= w (str.++ "aba" x) ))
(assert (= x (str.replace_all z "b" "ba" ) ))
(assert (= w (str.replace_all z "baaa" "aa" ) ))

(check-sat)
