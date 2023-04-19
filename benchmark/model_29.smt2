(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun j () String)
(declare-fun w () String)
(declare-fun k () String)
(declare-fun jz () String)

(assert (= j k))
(assert (str.contains k "a"))
(assert (= j (str.replace_all jz "a" "c" ) ))

(check-sat)
