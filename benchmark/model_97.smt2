(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun x () String)
(declare-fun t () String)
(declare-fun s () String)
(declare-fun xv () String)

(assert (str.contains s "aba"))
(assert (= t (str.replace_all s "b" "bba" ) ))
(assert (not (str.contains t "aa")))

(check-sat)
