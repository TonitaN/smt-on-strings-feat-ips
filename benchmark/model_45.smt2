(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun q () String)
(declare-fun u () String)
(declare-fun t () String)

(assert (str.contains q "ca"))
(assert (= u (str.replace_all t "c" "ba" ) ))
(assert (= q (str.++ u "abbabb") ))

(check-sat)
