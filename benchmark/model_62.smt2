(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun b () String)
(declare-fun n () String)
(declare-fun x () String)
(declare-fun u () String)

(assert (= b (str.replace_all n "a" "bbb" ) ))
(assert (= b (str.++ u "a") ))
(assert (str.contains x "bc"))
(assert (= u (str.++ x x x) ))

(check-sat)
