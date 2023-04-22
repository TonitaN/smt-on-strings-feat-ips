(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun y () String)
(declare-fun yy () String)
(declare-fun z () String)
(declare-fun i () String)

(assert (str.contains i "a"))
(assert (= i (str.replace_all y "a" "c" ) ))

(check-sat)
