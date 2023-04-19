(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun y () String)
(declare-fun yj () String)
(declare-fun x () String)

(assert (= y (str.replace_all x "ac" "bcb" ) ))
(assert (not (str.contains y "a")))
(assert (str.contains yj "aa"))
(assert (= yj (str.++ y x) ))

(check-sat)
