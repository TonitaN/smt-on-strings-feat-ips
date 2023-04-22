(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun k () String)
(declare-fun j () String)
(declare-fun x () String)

(assert (= x (str.++ "aa" j j) ))
(assert (= k (str.replace_all x "ab" "aa" ) ))
(assert (= j (str.replace_all k "a" "bc" ) ))

(check-sat)
