(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun x () String)
(declare-fun b () String)
(declare-fun xr () String)

(assert (= b (str.replace_all xr "bba" "caba" ) ))
(assert (= b (str.replace_all x "ab" "ba" ) ))
(assert (= xr (str.++ "aaa" x "cc") ))

(check-sat)
