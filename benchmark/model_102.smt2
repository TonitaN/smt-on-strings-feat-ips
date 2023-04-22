(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun u () String)
(declare-fun b () String)
(declare-fun ux () String)
(declare-fun y () String)

(assert (= ux (str.++ y u "c") ))
(assert (= b (str.++ ux y) ))
(assert (= u (str.replace_all b "caa" "ba" ) ))

(check-sat)
