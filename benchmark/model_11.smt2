(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun d () String)
(declare-fun j () String)
(declare-fun js () String)

(assert (= j (str.++ "bbbb" d) ))
(assert (= d (str.replace_all js "a" "aa" ) ))
(assert (= js (str.replace_all j "ba" "cb" ) ))

(check-sat)
