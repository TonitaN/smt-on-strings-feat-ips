(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun w () String)
(declare-fun j () String)
(declare-fun y () String)

(assert (= y (str.replace_all j "cb" "ba" ) ))
(assert (= j (str.replace_all y "a" "aaac" ) ))
(assert (str.contains y "ab"))

(check-sat)
