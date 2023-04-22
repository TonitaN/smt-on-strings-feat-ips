(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun z () String)
(declare-fun g () String)
(declare-fun u () String)

(assert (= g (str.++ "baa" u) ))
(assert (str.contains g "bb"))
(assert (not (str.contains z "bb")))
(assert (= u (str.replace_all z "aa" "caa" ) ))

(check-sat)
