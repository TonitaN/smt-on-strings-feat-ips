(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun x () String)
(declare-fun xx () String)
(declare-fun xxz () String)
(declare-fun q () String)

(assert (= xx (str.replace_all x "c" "a" ) ))
(assert (str.contains xx "c"))

(check-sat)
