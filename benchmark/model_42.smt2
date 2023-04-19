(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun f () String)
(declare-fun r () String)
(declare-fun z () String)
(declare-fun i () String)

(assert (= f (str.replace_all r "a" "ab" ) ))
(assert (= f (str.replace_all z "a" "b" ) ))
(assert (= r (str.++ "ac" i i) ))

(check-sat)
