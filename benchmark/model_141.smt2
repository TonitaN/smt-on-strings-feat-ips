(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun v () String)
(declare-fun y () String)
(declare-fun x () String)

(assert (str.contains x "aa"))
(assert (str.contains y "bb"))
(assert (= v (str.++ "c" x "c") ))
(assert (= x (str.replace_all y "b" "ac" ) ))
(assert (str.contains v "a"))

(check-sat)
