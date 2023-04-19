(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun z () String)
(declare-fun y () String)
(declare-fun b () String)

(assert (= y (str.replace_all b "bca" "b" ) ))
(assert (= z (str.replace_all y "abba" "aa" ) ))
(assert (not (str.contains z "c")))
(assert (= b (str.++ z "ac") ))

(check-sat)
