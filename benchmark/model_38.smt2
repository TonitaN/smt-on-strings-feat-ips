(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun z () String)
(declare-fun x () String)
(declare-fun a () String)
(declare-fun r () String)

(assert (= r (str.replace_all a "aa" "ab" ) ))
(assert (= r (str.++ z "baa" x) ))

(check-sat)
