(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun q () String)
(declare-fun k () String)
(declare-fun w () String)

(assert (= k (str.++ q q "c") ))
(assert (not (str.contains w "a")))
(assert (= w (str.replace_all k "a" "ba" ) ))
(assert (str.contains k "a"))

(check-sat)
