(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun n () String)
(declare-fun s () String)
(declare-fun x () String)

(assert (str.contains s "a"))
(assert (= s (str.replace_all x "a" "b" ) ))

(check-sat)
