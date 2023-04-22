(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun g () String)
(declare-fun b () String)
(declare-fun t () String)
(declare-fun z () String)

(assert (= b (str.replace_all t "abac" "bbb" ) ))
(assert (= b (str.replace_all t "a" "baa" ) ))
(assert (str.contains b "aa"))

(check-sat)
