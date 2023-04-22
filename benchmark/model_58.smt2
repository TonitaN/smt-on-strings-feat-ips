(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun x () String)
(declare-fun xz () String)
(declare-fun h () String)

(assert (= x (str.replace_all xz "a" "c" ) ))
(assert (= xz (str.++ h h "bb") ))
(assert (= h (str.replace_all x "a" "aa" ) ))

(check-sat)
