(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun y () String)
(declare-fun d () String)
(declare-fun j () String)
(declare-fun z () String)

(assert (= y (str.replace_all j "ba" "ac" ) ))
(assert (= j (str.replace_all d "bb" "bba" ) ))
(assert (= y (str.++ z "a" d) ))

(check-sat)
