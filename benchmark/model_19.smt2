(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun t () String)
(declare-fun k () String)
(declare-fun x () String)
(declare-fun xx () String)

(assert (= k (str.replace_all xx "b" "ba" ) ))
(assert (= x (str.replace_all k "a" "bb" ) ))
(assert (= xx (str.++ x "c" t) ))

(check-sat)
