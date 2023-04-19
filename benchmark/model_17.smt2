(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun y () String)
(declare-fun x () String)
(declare-fun xq () String)

(assert (not (str.contains x "a")))
(assert (str.contains xq "aa"))
(assert (= x (str.replace_all xq "ac" "c" ) ))

(check-sat)
