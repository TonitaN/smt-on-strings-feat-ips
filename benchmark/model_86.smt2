(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun v () String)
(declare-fun n () String)
(declare-fun w () String)
(declare-fun t () String)

(assert (= w (str.++ n v) ))
(assert (= v (str.++ "b" t) ))
(assert (= t (str.replace_all w "aab" "bb" ) ))

(check-sat)
