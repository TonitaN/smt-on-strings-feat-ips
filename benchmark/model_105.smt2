(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun e () String)
(declare-fun s () String)
(declare-fun h () String)

(assert (= h (str.++ e e) ))
(assert (= s (str.++ "a" h "bbb") ))
(assert (= s (str.replace_all e "c" "bc" ) ))

(check-sat)
