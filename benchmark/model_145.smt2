(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun b () String)
(declare-fun z () String)
(declare-fun v () String)
(declare-fun h () String)

(assert (= v (str.replace_all h "a" "ab" ) ))
(assert (= h (str.++ b b "a") ))
(assert (= b (str.++ v "ac" v) ))

(check-sat)
