(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun y () String)
(declare-fun yj () String)
(declare-fun x () String)

(assert (= y (str.replace_all x "ac" "bcb" ) ))
(assert (= yj (str.++ y x) ))
(assert (str.contains yj "aa"))
(assert (not (str.contains y "a")))

(check-sat)
