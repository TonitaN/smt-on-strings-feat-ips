(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun s () String)
(declare-fun n () String)
(declare-fun x () String)

(assert (str.contains s "cac"))
(assert (= s (str.replace_all x "ac" "a" ) ))
(assert (= s (str.replace_all x "cab" "ab" ) ))

(check-sat)
