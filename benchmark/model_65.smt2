(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun f () String)
(declare-fun b () String)
(declare-fun j () String)
(declare-fun x () String)

(assert (= b (str.replace_all j "aac" "ac" ) ))
(assert (not (str.contains j "ab")))
(assert (= b (str.++ f "ab") ))

(check-sat)
