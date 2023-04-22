(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun x () String)
(declare-fun b () String)
(declare-fun u () String)

(assert (= b (str.replace_all u "aa" "cc" ) ))
(assert (str.contains b "aa"))

(check-sat)
