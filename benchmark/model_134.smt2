(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun x () String)
(declare-fun xx () String)
(declare-fun q () String)

(assert (= xx (str.replace_all x "a" "b" ) ))
(assert (= xx (str.++ q "a") ))

(check-sat)
