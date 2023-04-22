(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun a () String)
(declare-fun e () String)
(declare-fun m () String)

(assert (str.contains m "aba"))
(assert (= e (str.replace_all a "aabac" "aa" ) ))
(assert (str.contains a "aab"))
(assert (= m e))
(assert (str.contains e "baba"))
(assert (= m (str.++ a "bbbaab") ))

(check-sat)
