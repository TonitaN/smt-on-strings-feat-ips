(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun x () String)
(declare-fun q () String)
(declare-fun z () String)

(assert (= z (str.replace_all x "caba" "ba" ) ))
(assert (= q (str.++ "ac" x "bbba") ))
(assert (= z (str.replace_all q "c" "a" ) ))

(check-sat)
