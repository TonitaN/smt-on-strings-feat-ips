(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun x () String)
(declare-fun q () String)
(declare-fun u () String)

(assert (str.contains q "bba"))
(assert (not (str.contains u "aaa")))
(assert (= u (str.replace_all q "b" "a" ) ))

(check-sat)
