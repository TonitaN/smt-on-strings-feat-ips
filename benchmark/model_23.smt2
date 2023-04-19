(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun x () String)
(declare-fun b () String)
(declare-fun a () String)

(assert (= b (str.++ "ab" a "aab") ))
(assert (= b x))
(assert (= x (str.replace_all a "aac" "aa" ) ))

(check-sat)
