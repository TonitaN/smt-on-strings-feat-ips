(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun w () String)
(declare-fun x () String)
(declare-fun i () String)

(assert (= w (str.replace_all x "b" "a" ) ))
(assert (str.contains w "cc"))
(assert (not (str.contains x "c")))

(check-sat)
