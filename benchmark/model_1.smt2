(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun y () String)
(declare-fun z () String)
(declare-fun i () String)

(assert (= y (str.replace_all z "aa" "aaa" ) ))
(assert (str.contains z "aa"))
(assert (= z (str.replace_all y "ba" "bba" ) ))

(check-sat)
