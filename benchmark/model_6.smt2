(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun y () String)
(declare-fun q () String)
(declare-fun t () String)
(declare-fun qa () String)

(assert (not (str.contains y "b")))
(assert (= y t))
(assert (= t (str.replace_all q "b" "ab" ) ))
(assert (= q (str.++ y "b") ))

(check-sat)
