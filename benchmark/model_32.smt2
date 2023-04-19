(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun u () String)
(declare-fun y () String)
(declare-fun z () String)
(declare-fun v () String)

(assert (= v (str.replace_all y "ab" "b" ) ))
(assert (= y (str.++ z "a") ))
(assert (= u (str.replace_all z "a" "ac" ) ))
(assert (= z (str.replace_all v "a" "c" ) ))
(assert (str.contains u "bb"))

(check-sat)
