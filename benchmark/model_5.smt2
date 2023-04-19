(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun x () String)
(declare-fun p () String)
(declare-fun y () String)
(declare-fun xg () String)

(assert (= xg (str.++ p x x) ))
(assert (= y (str.++ p xg "c") ))
(assert (= y (str.replace_all x "bb" "a" ) ))

(check-sat)
