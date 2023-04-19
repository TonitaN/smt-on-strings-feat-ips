(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun v () String)
(declare-fun a () String)
(declare-fun q () String)

(assert (= q (str.replace_all v "ac" "cabba" ) ))
(assert (= q (str.++ v a) ))
(assert (str.contains a "b"))

(check-sat)
