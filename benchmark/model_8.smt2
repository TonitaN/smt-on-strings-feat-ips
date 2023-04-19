(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun s () String)
(declare-fun x () String)
(declare-fun xw () String)

(assert (str.contains s "aa"))
(assert (= s (str.replace_all xw "cb" "baba" ) ))
(assert (= s (str.replace_all x "aba" "a" ) ))
(assert (not (str.contains x "a")))
(assert (not (str.contains xw "aa")))

(check-sat)
