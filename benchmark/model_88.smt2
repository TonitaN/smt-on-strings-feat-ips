(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun r () String)
(declare-fun v () String)
(declare-fun w () String)

(assert (= w (str.replace_all r "ac" "bb" ) ))
(assert (= r (str.replace_all v "aac" "ba" ) ))
(assert (str.contains v "bac"))
(assert (= w (str.replace_all r "aba" "ba" ) ))

(check-sat)
