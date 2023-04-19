(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun x () String)
(declare-fun z () String)
(declare-fun s () String)

(assert (= z (str.++ s "b") ))
(assert (str.contains x "bb"))
(assert (= x (str.replace_all z "a" "ba" ) ))
(assert (not (str.contains s "b")))

(check-sat)
