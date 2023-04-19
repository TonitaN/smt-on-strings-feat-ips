(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun y () String)
(declare-fun j () String)
(declare-fun o () String)
(declare-fun s () String)

(assert (= o (str.replace_all y "b" "ab" ) ))
(assert (= j (str.replace_all y "a" "baa" ) ))
(assert (= s (str.++ j "ba") ))
(assert (= s (str.replace_all o "aa" "bbb" ) ))

(check-sat)
