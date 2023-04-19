(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun v () String)
(declare-fun x () String)
(declare-fun a () String)
(declare-fun z () String)

(assert (= v (str.replace_all x "caaa" "aaba" ) ))
(assert (str.contains v "bba"))
(assert (not (str.contains x "bb")))

(check-sat)
