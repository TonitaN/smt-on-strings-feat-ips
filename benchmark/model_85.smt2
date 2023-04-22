(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun a () String)
(declare-fun b () String)
(declare-fun j () String)

(assert (= j (str.replace_all a "cba" "ba" ) ))
(assert (not (str.contains a "aa")))
(assert (= j (str.++ b "aaa") ))

(check-sat)
