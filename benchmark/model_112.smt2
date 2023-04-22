(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun u () String)
(declare-fun j () String)
(declare-fun z () String)

(assert (= j (str.replace_all z "caa" "ba" ) ))
(assert (not (str.contains j "a")))
(assert (= z (str.replace_all j "aba" "aa" ) ))
(assert (str.contains z "ac"))

(check-sat)
