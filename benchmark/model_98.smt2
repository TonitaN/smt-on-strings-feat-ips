(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun t () String)
(declare-fun x () String)
(declare-fun j () String)

(assert (= t (str.++ x "aaabc") ))
(assert (not (str.contains j "aa")))
(assert (= j (str.replace_all t "bbca" "cba" ) ))

(check-sat)
