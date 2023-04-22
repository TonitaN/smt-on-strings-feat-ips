(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun z () String)
(declare-fun p () String)
(declare-fun x () String)
(declare-fun zx () String)

(assert (= p (str.++ zx "bc" zx) ))
(assert (= p (str.replace_all x "b" "cba" ) ))

(check-sat)
