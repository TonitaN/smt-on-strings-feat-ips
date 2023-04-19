(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun x () String)
(declare-fun z () String)
(declare-fun xy () String)

(assert (str.contains x "aa"))
(assert (= x (str.replace_all z "a" "cb" ) ))

(check-sat)
