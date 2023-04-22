(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun y () String)
(declare-fun x () String)
(declare-fun ya () String)
(declare-fun s () String)

(assert (not (str.contains x "a")))
(assert (= y (str.replace_all x "b" "bacb" ) ))
(assert (= y (str.replace_all s "ba" "aaac" ) ))
(assert (not (str.contains y "ba")))
(assert (= s (str.++ ya "a") ))

(check-sat)
