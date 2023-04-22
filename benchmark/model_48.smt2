(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun m () String)
(declare-fun y () String)
(declare-fun x () String)
(declare-fun u () String)

(assert (= y (str.replace_all u "b" "aac" ) ))
(assert (= x (str.++ u y "bba") ))
(assert (str.contains x "aba"))
(assert (not (str.contains y "a")))

(check-sat)
