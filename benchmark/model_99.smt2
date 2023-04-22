(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun v () String)
(declare-fun y () String)
(declare-fun x () String)
(declare-fun j () String)

(assert (= x (str.++ "aa" j "ca") ))
(assert (not (str.contains y "bbb")))
(assert (not (str.contains x "ac")))
(assert (not (str.contains v "ca")))
(assert (= x (str.replace_all v "bbb" "ca" ) ))
(assert (= v (str.replace_all y "cca" "ab" ) ))

(check-sat)
