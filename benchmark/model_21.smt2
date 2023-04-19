(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun z () String)
(declare-fun v () String)
(declare-fun x () String)
(declare-fun xh () String)

(assert (= v (str.++ x z) ))
(assert (= z (str.replace_all x "b" "aac" ) ))
(assert (str.contains v "bba"))
(assert (str.contains v "ca"))

(check-sat)
