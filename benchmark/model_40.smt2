(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun x () String)
(declare-fun v () String)
(declare-fun xk () String)
(declare-fun u () String)

(assert (str.contains xk "bba"))
(assert (= v (str.replace_all xk "a" "acb" ) ))
(assert (= v (str.++ xk xk) ))

(check-sat)
