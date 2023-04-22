(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun x () String)
(declare-fun xx () String)
(declare-fun z () String)
(declare-fun q () String)

(assert (= z (str.replace_all x "cb" "a" ) ))
(assert (str.contains z "cb"))

(check-sat)
