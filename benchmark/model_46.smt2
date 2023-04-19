(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun x () String)
(declare-fun q () String)
(declare-fun o () String)

(assert (str.contains q "cb"))
(assert (= q (str.replace_all o "c" "a" ) ))

(check-sat)
