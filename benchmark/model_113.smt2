(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun j () String)
(declare-fun x () String)
(declare-fun xh () String)

(assert (= xh (str.replace_all j "a" "bac" ) ))
(assert (= x (str.replace_all xh "b" "a" ) ))
(assert (str.contains x "b"))

(check-sat)
