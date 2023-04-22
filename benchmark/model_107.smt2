(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun y () String)
(declare-fun j () String)
(declare-fun f () String)

(assert (str.contains f "bcb"))
(assert (= j (str.replace_all y "ac" "aa" ) ))
(assert (= y (str.++ f f f) ))
(assert (= f (str.replace_all j "cbaa" "ac" ) ))

(check-sat)
