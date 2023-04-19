(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun l () String)
(declare-fun x () String)
(declare-fun y () String)

(assert (= x y))
(assert (= l (str.++ "cb" y "cb") ))
(assert (= x (str.replace_all l "ab" "aab" ) ))

(check-sat)
