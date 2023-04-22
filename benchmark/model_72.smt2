(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun z () String)
(declare-fun j () String)
(declare-fun m () String)
(declare-fun x () String)

(assert (= j x))
(assert (= x (str.++ m "bcc") ))
(assert (= m (str.replace_all j "bc" "a" ) ))
(assert (not (str.contains x "a")))

(check-sat)
