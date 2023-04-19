(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun x () String)
(declare-fun v () String)
(declare-fun z () String)

(assert (= x (str.replace_all v "b" "bb" ) ))
(assert (str.contains z "b"))
(assert (= x (str.++ z z z) ))

(check-sat)
