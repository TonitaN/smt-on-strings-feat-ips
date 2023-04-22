(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun j () String)
(declare-fun u () String)
(declare-fun z () String)

(assert (= j (str.replace_all z "ca" "c" ) ))
(assert (= j (str.replace_all u "a" "abb" ) ))
(assert (= u (str.++ z "acc") ))

(check-sat)
