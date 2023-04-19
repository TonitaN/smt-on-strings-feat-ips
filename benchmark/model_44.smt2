(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun v () String)
(declare-fun q () String)
(declare-fun x () String)

(assert (str.contains v "aa"))
(assert (= x (str.++ "bb" q) ))
(assert (= x (str.replace_all v "c" "bc" ) ))
(assert (not (str.contains q "a")))

(check-sat)
