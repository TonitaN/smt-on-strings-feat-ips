(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun c () String)
(declare-fun y () String)
(declare-fun n () String)

(assert (= y (str.replace_all c "a" "b" ) ))
(assert (str.contains y "aaaa"))

(check-sat)
