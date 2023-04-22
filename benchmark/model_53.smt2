(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun x () String)
(declare-fun s () String)
(declare-fun xw () String)

(assert (= x (str.replace_all s "a" "cab" ) ))
(assert (str.contains x "aa"))

(check-sat)
