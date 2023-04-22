(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun u () String)
(declare-fun x () String)
(declare-fun v () String)

(assert (= u (str.replace_all x "ca" "cc" ) ))
(assert (str.contains x "bb"))
(assert (not (str.contains u "bb")))

(check-sat)
