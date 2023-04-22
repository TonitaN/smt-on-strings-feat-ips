(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun x () String)
(declare-fun w () String)
(declare-fun q () String)
(declare-fun v () String)

(assert (= w (str.replace_all v "a" "bb" ) ))
(assert (str.contains w "a"))

(check-sat)
