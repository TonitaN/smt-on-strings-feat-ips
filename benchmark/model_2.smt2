(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun w () String)
(declare-fun x () String)
(declare-fun u () String)

(assert (= w (str.replace_all u "a" "aaaac" ) ))
(assert (str.contains u "aab"))
(assert (not (str.contains w "aca")))

(check-sat)
