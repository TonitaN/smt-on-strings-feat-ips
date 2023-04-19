(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun x () String)
(declare-fun xx () String)
(declare-fun xl () String)
(declare-fun j () String)

(assert (= j (str.replace_all xx "a" "aa" ) ))
(assert (= xl (str.replace_all j "ba" "b" ) ))
(assert (str.contains xl "ca"))
(assert (= xx (str.replace_all j "ba" "ac" ) ))

(check-sat)
