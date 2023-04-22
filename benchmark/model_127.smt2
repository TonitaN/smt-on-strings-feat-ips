(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun x () String)
(declare-fun xn () String)

(assert (= x (str.replace_all xn "a" "aba" ) ))
(assert (= x (str.++ "abab" xn) ))
(assert (str.contains xn "abba"))

(check-sat)
