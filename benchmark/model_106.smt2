(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun z () String)
(declare-fun a () String)
(declare-fun q () String)

(assert (= q (str.++ z "b") ))
(assert (= a (str.replace_all z "b" "bba" ) ))
(assert (= a (str.++ z q) ))

(check-sat)
