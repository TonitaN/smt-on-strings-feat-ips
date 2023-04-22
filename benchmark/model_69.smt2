(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun y () String)
(declare-fun b () String)
(declare-fun yu () String)

(assert (str.contains b "ba"))
(assert (= y (str.replace_all b "a" "aaaca" ) ))
(assert (= y (str.replace_all b "ba" "ac" ) ))

(check-sat)
