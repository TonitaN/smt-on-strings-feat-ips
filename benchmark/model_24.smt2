(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun i () String)
(declare-fun x () String)
(declare-fun q () String)

(assert (= x (str.replace_all i "ab" "aba" ) ))
(assert (= x (str.++ q q) ))
(assert (str.contains q "a"))
(assert (= q (str.replace_all i "caba" "baa" ) ))

(check-sat)
