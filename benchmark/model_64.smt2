(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun u () String)
(declare-fun j () String)

(assert (= j (str.replace_all u "a" "bba" ) ))
(assert (= j (str.++ "cc" u) ))

(check-sat)
