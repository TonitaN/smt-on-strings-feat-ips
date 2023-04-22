(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun x () String)
(declare-fun v () String)
(declare-fun xx () String)

(assert (= xx (str.replace_all v "ac" "aba" ) ))
(assert (str.contains x "bba"))
(assert (str.contains xx "a"))
(assert (= x (str.++ v xx) ))
(assert (not (str.contains v "a")))

(check-sat)
