(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun b () String)
(declare-fun a () String)
(declare-fun z () String)

(assert (= z b))
(assert (= z (str.++ "ca" a) ))
(assert (= a (str.replace_all b "aa" "a" ) ))

(check-sat)
