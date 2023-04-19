(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun z () String)
(declare-fun v () String)
(declare-fun x () String)

(assert (= z (str.replace_all v "a" "b" ) ))
(assert (= v (str.++ "ba" x) ))
(assert (= z (str.replace_all x "ac" "b" ) ))

(check-sat)
