(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun x () String)
(declare-fun r () String)
(declare-fun u () String)

(assert (= u (str.replace_all r "cb" "acba" ) ))
(assert (= u (str.++ x "cb") ))

(check-sat)
