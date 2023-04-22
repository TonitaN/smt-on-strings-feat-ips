(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun d () String)
(declare-fun x () String)
(declare-fun a () String)

(assert (str.contains d "a"))
(assert (= d (str.replace_all x "a" "ac" ) ))
(assert (= x (str.replace_all d "ca" "ba" ) ))

(check-sat)
