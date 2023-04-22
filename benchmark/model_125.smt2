(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun x () String)
(declare-fun z () String)
(declare-fun k () String)
(declare-fun s () String)

(assert (= z (str.replace_all x "b" "ac" ) ))
(assert (= z (str.++ s "abbabb") ))

(check-sat)
