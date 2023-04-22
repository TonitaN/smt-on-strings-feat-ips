(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun x () String)
(declare-fun n () String)
(declare-fun z () String)
(declare-fun s () String)

(assert (= n (str.replace_all x "bb" "a" ) ))
(assert (= z (str.replace_all x "b" "aa" ) ))
(assert (= n (str.++ "b" z "b") ))

(check-sat)
