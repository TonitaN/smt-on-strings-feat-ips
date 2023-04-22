(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun j () String)
(declare-fun d () String)
(declare-fun k () String)

(assert (= j (str.++ d d "b") ))
(assert (= k (str.replace_all j "b" "aac" ) ))
(assert (= d (str.++ "b" k k) ))

(check-sat)
