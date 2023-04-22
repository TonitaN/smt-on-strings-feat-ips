(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun j () String)
(declare-fun x () String)
(declare-fun v () String)

(assert (= x (str.++ "acb" j) ))
(assert (= v (str.replace_all j "b" "bab" ) ))
(assert (= x (str.replace_all v "bac" "aa" ) ))

(check-sat)
