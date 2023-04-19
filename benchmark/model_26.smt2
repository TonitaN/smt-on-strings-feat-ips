(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun f () String)
(declare-fun x () String)
(declare-fun xx () String)
(declare-fun xxy () String)

(assert (= xx (str.++ f "bb" f) ))
(assert (= xx xxy))
(assert (= f (str.replace_all xxy "aa" "a" ) ))

(check-sat)
