(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun u () String)
(declare-fun x () String)
(declare-fun d () String)
(declare-fun q () String)

(assert (str.contains x "c"))
(assert (= q (str.replace_all u "c" "aa" ) ))
(assert (= q (str.++ "a" x) ))

(check-sat)
