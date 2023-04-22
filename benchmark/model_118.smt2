(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun z () String)
(declare-fun v () String)
(declare-fun vy () String)
(declare-fun x () String)

(assert (= v (str.replace_all z "aa" "ac" ) ))
(assert (= vy (str.++ v "aa" v) ))
(assert (= z (str.replace_all vy "ac" "a" ) ))

(check-sat)
