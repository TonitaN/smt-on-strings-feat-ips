(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun i () String)
(declare-fun t () String)
(declare-fun q () String)

(assert (= i (str.++ q "ba") ))
(assert (= i (str.replace_all t "aa" "bac" ) ))
(assert (not (str.contains t "a")))
(assert (= t (str.replace_all i "aabaa" "ac" ) ))

(check-sat)
