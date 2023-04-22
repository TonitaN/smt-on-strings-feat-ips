(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun n () String)
(declare-fun x () String)
(declare-fun xx () String)
(declare-fun q () String)

(assert (str.contains n "a"))
(assert (= xx (str.replace_all x "a" "ab" ) ))
(assert (= xx (str.replace_all n "c" "b" ) ))

(check-sat)
