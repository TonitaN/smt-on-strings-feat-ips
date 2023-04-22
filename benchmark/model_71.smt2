(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun j () String)
(declare-fun jx () String)
(declare-fun g () String)
(declare-fun y () String)

(assert (= j (str.replace_all jx "bba" "ba" ) ))
(assert (= g (str.replace_all jx "bc" "a" ) ))
(assert (= g (str.++ "ba" j) ))

(check-sat)
