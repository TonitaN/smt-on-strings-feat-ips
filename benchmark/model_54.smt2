(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun l () String)
(declare-fun x () String)
(declare-fun q () String)

(assert (str.contains x "ba"))
(assert (= x (str.replace_all l "b" "a" ) ))

(check-sat)
