(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun a () String)
(declare-fun p () String)
(declare-fun x () String)

(assert (= a (str.++ x x) ))
(assert (not (str.contains p "a")))
(assert (str.contains x "ca"))
(assert (= a (str.replace_all p "b" "ba" ) ))

(check-sat)
