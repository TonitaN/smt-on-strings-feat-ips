(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun b () String)
(declare-fun i () String)
(declare-fun s () String)
(declare-fun x () String)

(assert (str.contains x "aba"))
(assert (= i (str.replace_all b "aac" "aba" ) ))
(assert (= b (str.++ "ba" s) ))
(assert (= i (str.++ x "ab" x) ))
(assert (= b (str.replace_all x "acc" "aa" ) ))

(check-sat)
