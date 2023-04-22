(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun j () String)
(declare-fun x () String)
(declare-fun y () String)

(assert (not (str.contains y "b")))
(assert (= x (str.++ y "ab" j) ))
(assert (= j (str.replace_all y "aaa" "bb" ) ))
(assert (str.contains x "bcba"))

(check-sat)
