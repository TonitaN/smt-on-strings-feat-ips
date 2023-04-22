(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun d () String)
(declare-fun v () String)
(declare-fun x () String)
(declare-fun w () String)

(assert (= d v))
(assert (= x w))
(assert (= d (str.++ "ab" x "c") ))
(assert (= v (str.replace_all w "ba" "b" ) ))

(check-sat)
