(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun y () String)
(declare-fun k () String)
(declare-fun x () String)

(assert (= k (str.++ "bbbb" y) ))
(assert (= x (str.replace_all y "cbba" "aa" ) ))
(assert (= x (str.++ k k) ))

(check-sat)
