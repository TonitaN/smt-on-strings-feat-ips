(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun x () String)
(declare-fun j () String)
(declare-fun n () String)

(assert (= j (str.++ x x "aca") ))
(assert (= n (str.replace_all j "cba" "ca" ) ))
(assert (= j (str.replace_all n "aca" "ba" ) ))

(check-sat)
