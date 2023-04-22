(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun d () String)
(declare-fun e () String)
(declare-fun x () String)

(assert (not (str.contains e "a")))
(assert (str.contains x "c"))
(assert (= e (str.replace_all d "b" "a" ) ))
(assert (str.contains x "a"))
(assert (not (str.contains d "b")))

(check-sat)
