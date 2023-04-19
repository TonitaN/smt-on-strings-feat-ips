(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun x () String)
(declare-fun xj () String)
(declare-fun xe () String)
(declare-fun i () String)

(assert (= x (str.++ i i) ))
(assert (str.contains xe "ba"))
(assert (not (str.contains x "ab")))
(assert (not (str.contains xe "c")))
(assert (= xe (str.replace_all x "a" "acba" ) ))

(check-sat)
