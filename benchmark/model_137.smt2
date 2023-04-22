(set-logic QF_SLIA)
(set-option :strings-exp true)

(declare-fun d () String)
(declare-fun a () String)
(declare-fun q () String)

(assert (= q (str.replace_all d "bbac" "ba" ) ))
(assert (= d (str.++ a q) ))
(assert (str.contains a "aa"))

(check-sat)
