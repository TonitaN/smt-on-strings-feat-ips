(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun j () String)
(declare-fun i () String)
(declare-fun x () String)
(declare-fun q () String)

(assert (= x (str.replace_all i "bb" "baa" ) ))
(assert (= j (str.++ "b" x) ))
(assert (= i j))

(check-sat)
