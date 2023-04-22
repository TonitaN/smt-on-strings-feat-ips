(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun t () String)
(declare-fun z () String)
(declare-fun x () String)
(declare-fun y () String)

(assert (str.contains y "b"))
(assert (str.contains z "cac"))
(assert (= z (str.replace_all t "aa" "ab" ) ))
(assert (= t y))
(assert (= y (str.replace_all z "ac" "cac" ) ))

(check-sat)
