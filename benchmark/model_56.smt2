(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun x () String)
(declare-fun q () String)
(declare-fun xi () String)
(declare-fun n () String)

(assert (= n (str.replace_all x "c" "cab" ) ))
(assert (not (str.contains x "aa")))
(assert (= n (str.++ xi q) ))
(assert (str.contains q "aa"))

(check-sat)
