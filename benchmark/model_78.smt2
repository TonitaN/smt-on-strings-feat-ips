(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun k () String)
(declare-fun z () String)
(declare-fun b () String)
(declare-fun zx () String)

(assert (= b (str.replace_all k "aaa" "ba" ) ))
(assert (= zx (str.++ b "c") ))
(assert (= k (str.replace_all zx "bb" "b" ) ))

(check-sat)
