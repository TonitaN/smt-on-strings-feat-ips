(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun u () String)
(declare-fun m () String)
(declare-fun y () String)

(assert (= m (str.replace_all y "a" "cca" ) ))
(assert (= m (str.++ "b" y) ))

(check-sat)
