(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun d () String)
(declare-fun t () String)
(declare-fun x () String)

(assert (= x (str.replace_all d "ba" "bba" ) ))
(assert (not (str.contains d "bb")))
(assert (= x (str.++ "b" t t) ))
(assert (= t (str.++ d "aa") ))

(check-sat)
