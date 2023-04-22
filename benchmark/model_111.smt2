(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun s () String)
(declare-fun x () String)
(declare-fun n () String)

(assert (str.contains n "bb"))
(assert (= n (str.++ "b" x "b") ))
(assert (= s n))
(assert (= s (str.replace_all x "ba" "c" ) ))

(check-sat)
