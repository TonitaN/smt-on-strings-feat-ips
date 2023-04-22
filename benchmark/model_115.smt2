(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun z () String)
(declare-fun j () String)
(declare-fun l () String)

(assert (= z (str.replace_all l "abc" "aa" ) ))
(assert (= z (str.++ "aabaa" j) ))
(assert (= j (str.++ "ac" l) ))

(check-sat)
