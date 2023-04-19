(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun t () String)
(declare-fun y () String)
(declare-fun h () String)

(assert (= y (str.replace_all t "a" "cb" ) ))
(assert (not (str.contains y "b")))
(assert (= h (str.++ t t) ))
(assert (str.contains h "aab"))

(check-sat)
