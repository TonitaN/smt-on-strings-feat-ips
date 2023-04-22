(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun x () String)
(declare-fun d () String)
(declare-fun w () String)

(assert (= x (str.++ d d d) ))
(assert (str.contains x "aaac"))
(assert (not (str.contains w "a")))
(assert (= w (str.replace_all x "aa" "aab" ) ))

(check-sat)
