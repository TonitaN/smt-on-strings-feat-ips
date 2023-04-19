(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun x () String)
(declare-fun xm () String)
(declare-fun xx () String)

(assert (= x (str.replace_all xx "b" "aa" ) ))
(assert (str.contains xx "ab"))
(assert (str.contains xx "ac"))
(assert (not (str.contains x "a")))

(check-sat)
