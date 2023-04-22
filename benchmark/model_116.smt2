(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun u () String)
(declare-fun v () String)
(declare-fun z () String)
(declare-fun zx () String)

(assert (str.contains z "a"))
(assert (= z (str.replace_all zx "a" "b" ) ))

(check-sat)
