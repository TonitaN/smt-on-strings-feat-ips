(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun a () String)
(declare-fun z () String)
(declare-fun p () String)

(assert (= z (str.replace_all a "ba" "a" ) ))
(assert (= z (str.++ "a" p) ))
(assert (= a (str.replace_all p "ac" "aa" ) ))

(check-sat)
