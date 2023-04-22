(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun u () String)
(declare-fun y () String)
(declare-fun yx () String)
(declare-fun z () String)

(assert (= y (str.++ u "abc") ))
(assert (= yx (str.replace_all y "ac" "c" ) ))
(assert (= yx (str.replace_all u "bc" "b" ) ))

(check-sat)
