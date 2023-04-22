(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun t () String)
(declare-fun h () String)
(declare-fun a () String)
(declare-fun y () String)

(assert (= y (str.replace_all h "a" "b" ) ))
(assert (str.contains y "a"))

(check-sat)
