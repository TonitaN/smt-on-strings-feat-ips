(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun q () String)
(declare-fun t () String)
(declare-fun n () String)
(declare-fun d () String)

(assert (= n (str.replace_all q "ac" "a" ) ))
(assert (= n (str.replace_all t "b" "aa" ) ))
(assert (str.contains q "aba"))

(check-sat)
