(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun x () String)
(declare-fun xx () String)
(declare-fun g () String)

(assert (str.contains x "bb"))
(assert (= x (str.replace_all xx "a" "bbaa" ) ))
(assert (= x (str.++ g g) ))
(assert (= g (str.replace_all xx "b" "ab" ) ))

(check-sat)
