(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun f () String)
(declare-fun j () String)
(declare-fun v () String)
(declare-fun x () String)

(assert (= j (str.++ v "cca") ))
(assert (= j (str.replace_all f "ba" "cba" ) ))
(assert (not (str.contains f "ca")))

(check-sat)
