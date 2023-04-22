(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun v () String)
(declare-fun g () String)
(declare-fun f () String)
(declare-fun z () String)

(assert (str.contains f "acb"))
(assert (= g (str.replace_all v "aca" "ba" ) ))
(assert (not (str.contains g "acb")))
(assert (= v (str.++ f f f) ))

(check-sat)
