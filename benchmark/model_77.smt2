(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun s () String)
(declare-fun q () String)
(declare-fun u () String)

(assert (= s (str.++ q "abc") ))
(assert (= s (str.replace_all u "a" "baa" ) ))
(assert (not (str.contains u "c")))

(check-sat)
