(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun j () String)
(declare-fun k () String)
(declare-fun x () String)
(declare-fun jk () String)

(assert (= x (str.++ k k j) ))
(assert (= x (str.replace_all jk "b" "c" ) ))
(assert (not (str.contains jk "a")))
(assert (str.contains j "ca"))

(check-sat)
