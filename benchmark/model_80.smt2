(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun x () String)
(declare-fun xx () String)
(declare-fun r () String)
(declare-fun b () String)

(assert (str.contains xx "a"))
(assert (= r (str.++ xx b b) ))
(assert (= x (str.replace_all xx "bb" "a" ) ))
(assert (not (str.contains b "a")))
(assert (= x (str.replace_all b "b" "c" ) ))

(check-sat)
