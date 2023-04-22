(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun b () String)
(declare-fun x () String)
(declare-fun xs () String)

(assert (= b (str.++ xs xs) ))
(assert (not (str.contains b "a")))
(assert (= x (str.++ "a" b) ))
(assert (= xs (str.replace_all x "bbb" "aa" ) ))

(check-sat)
