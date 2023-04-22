(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun t () String)
(declare-fun v () String)
(declare-fun x () String)
(declare-fun xx () String)

(assert (= xx (str.++ v "aa") ))
(assert (= v (str.replace_all t "c" "b" ) ))
(assert (= t (str.replace_all xx "baa" "b" ) ))
(assert (not (str.contains x "b")))
(assert (= v x))

(check-sat)
