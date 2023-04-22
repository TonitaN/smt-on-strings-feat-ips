(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun y () String)
(declare-fun x () String)
(declare-fun xn () String)
(declare-fun u () String)

(assert (= xn (str.replace_all u "b" "aaa" ) ))
(assert (str.contains xn "bab"))

(check-sat)
