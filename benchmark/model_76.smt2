(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun z () String)
(declare-fun c () String)
(declare-fun zx () String)
(declare-fun x () String)

(assert (= zx (str.replace_all c "a" "ba" ) ))
(assert (str.contains c "ab"))
(assert (not (str.contains zx "ab")))

(check-sat)
