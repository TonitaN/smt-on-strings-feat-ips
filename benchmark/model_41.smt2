(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun i () String)
(declare-fun x () String)
(declare-fun y () String)
(declare-fun f () String)

(assert (= y (str.++ x x) ))
(assert (= f (str.replace_all y "cc" "a" ) ))
(assert (= x (str.++ "a" f) ))

(check-sat)
