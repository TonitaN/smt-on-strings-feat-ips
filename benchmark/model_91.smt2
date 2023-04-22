(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun x () String)
(declare-fun z () String)
(declare-fun u () String)
(declare-fun xj () String)

(assert (= z (str.++ "bb" xj u) ))
(assert (= u (str.++ x xj) ))
(assert (= z (str.replace_all x "baa" "b" ) ))

(check-sat)
