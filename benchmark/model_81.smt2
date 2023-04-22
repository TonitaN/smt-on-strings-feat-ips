(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun x () String)
(declare-fun k () String)
(declare-fun j () String)

(assert (= x (str.replace_all k "aab" "a" ) ))
(assert (= k (str.++ "cbaa" x) ))

(check-sat)
