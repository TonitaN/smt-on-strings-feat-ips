(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun x () String)
(declare-fun h () String)
(declare-fun xc () String)

(assert (= x (str.replace_all h "b" "aa" ) ))
(assert (= h (str.replace_all xc "baaac" "aa" ) ))
(assert (= xc (str.++ "abbabb" x) ))

(check-sat)
