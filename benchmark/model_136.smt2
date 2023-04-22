(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun x () String)
(declare-fun z () String)
(declare-fun k () String)

(assert (= x (str.replace_all k "a" "acaa" ) ))
(assert (= x (str.++ z "a" k) ))
(assert (not (str.contains z "a")))

(check-sat)
