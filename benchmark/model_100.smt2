(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun q () String)
(declare-fun l () String)
(declare-fun x () String)
(declare-fun xv () String)

(assert (= l (str.replace_all x "b" "a" ) ))
(assert (str.contains l "b"))
(assert (= q (str.++ xv xv) ))

(check-sat)
