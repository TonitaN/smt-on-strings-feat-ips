(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun x () String)
(declare-fun xx () String)
(declare-fun i () String)

(assert (str.contains xx "abba"))
(assert (= xx (str.++ "bcaab" x) ))
(assert (str.contains x "c"))
(assert (= x (str.replace_all i "aa" "ac" ) ))
(assert (= x (str.replace_all i "ac" "acaa" ) ))
(assert (not (str.contains i "c")))

(check-sat)
