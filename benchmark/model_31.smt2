(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun x () String)
(declare-fun xx () String)
(declare-fun xa () String)

(assert (not (str.contains xa "aa")))
(assert (str.contains xx "aa"))
(assert (= xx (str.replace_all xa "bb" "bbb" ) ))

(check-sat)
