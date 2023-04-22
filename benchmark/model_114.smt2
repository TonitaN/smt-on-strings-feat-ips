(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun x () String)
(declare-fun xy () String)
(declare-fun v () String)

(assert (str.contains x "ab"))
(assert (= xy (str.++ v v) ))
(assert (= x (str.replace_all xy "ab" "bc" ) ))
(assert (= x (str.replace_all xy "ba" "abc" ) ))

(check-sat)
