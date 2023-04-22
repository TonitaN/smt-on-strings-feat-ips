(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun a () String)
(declare-fun i () String)
(declare-fun aa () String)
(declare-fun u () String)

(assert (= a (str.++ "b" aa) ))
(assert (str.contains i "a"))
(assert (= i (str.++ u aa) ))
(assert (= i (str.replace_all a "a" "aa" ) ))

(check-sat)
