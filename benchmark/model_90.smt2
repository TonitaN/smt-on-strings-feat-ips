(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun z () String)
(declare-fun v () String)
(declare-fun u () String)

(assert (= v (str.replace_all z "bba" "a" ) ))
(assert (= z (str.++ "aab" v) ))

(check-sat)
