(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun x () String)
(declare-fun y () String)
(declare-fun g () String)
(declare-fun o () String)

(assert (= x (str.replace_all g "b" "bb" ) ))
(assert (= y (str.++ o "aaaa") ))
(assert (not (str.contains g "a")))
(assert (= y x))

(check-sat)
