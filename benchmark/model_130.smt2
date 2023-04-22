(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun a () String)
(declare-fun x () String)
(declare-fun g () String)

(assert (= x (str.++ a "ac" a) ))
(assert (= g (str.replace_all x "ba" "c" ) ))
(assert (= a (str.replace_all g "aaab" "bb" ) ))

(check-sat)
