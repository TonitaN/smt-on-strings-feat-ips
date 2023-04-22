(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun k () String)
(declare-fun b () String)
(declare-fun n () String)
(declare-fun bw () String)

(assert (= b (str.replace_all n "bc" "baaa" ) ))

(check-sat)
