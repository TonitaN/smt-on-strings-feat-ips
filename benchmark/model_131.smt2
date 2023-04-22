(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun e () String)
(declare-fun x () String)
(declare-fun o () String)

(assert (= e (str.++ "bca" o "aca") ))
(assert (= o (str.++ x x) ))
(assert (= x (str.replace_all e "ac" "abbcb" ) ))

(check-sat)
