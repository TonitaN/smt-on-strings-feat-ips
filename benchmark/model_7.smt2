(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun z () String)
(declare-fun v () String)
(declare-fun w () String)
(declare-fun o () String)

(assert (= o (str.replace_all z "cb" "b" ) ))
(assert (= o (str.++ v v) ))
(assert (= v (str.++ "a" z z) ))

(check-sat)
