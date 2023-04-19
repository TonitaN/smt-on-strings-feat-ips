(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun a () String)
(declare-fun x () String)
(declare-fun y () String)

(assert (= y (str.++ "a" x x) ))
(assert (= x (str.++ "aa" a) ))
(assert (= y (str.replace_all a "b" "bb" ) ))

(check-sat)
