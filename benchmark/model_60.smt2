(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun q () String)
(declare-fun z () String)
(declare-fun v () String)

(assert (= q (str.++ v v) ))
(assert (not (str.contains z "a")))
(assert (str.contains q "aba"))
(assert (= z (str.replace_all v "ba" "b" ) ))
(assert (str.contains v "bba"))

(check-sat)
