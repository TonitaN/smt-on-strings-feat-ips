(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun z () String)
(declare-fun n () String)
(declare-fun t () String)

(assert (str.contains n "ca"))
(assert (not (str.contains z "c")))
(assert (= t (str.replace_all n "aa" "b" ) ))
(assert (= z (str.++ t t "b") ))

(check-sat)
