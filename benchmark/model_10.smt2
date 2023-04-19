(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun x () String)
(declare-fun q () String)
(declare-fun y () String)

(assert (str.contains x "a"))
(assert (= y (str.replace_all x "bba" "b" ) ))
(assert (= y (str.replace_all x "a" "aac" ) ))

(check-sat)
