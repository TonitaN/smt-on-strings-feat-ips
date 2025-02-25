from sys import argv
from solver.dpllt import check_sat
from solver.formula_generator import Generator
from solver.lia import Lia_Formula, sliced_elements
from solver.parser import Parser
# from solver.structures import *

p = Parser(argv[1])
f = p.to_formula()
# f.print_dpll_view()
# print()
# result = check_sat(f)
# print(result)
# print(f)
lf = Lia_Formula(f)
print(lf.check_sat())
slices = sliced_elements(f.literals)
for s in slices:
    lf = Lia_Formula(f,s)
    ss = lf.check_sat()
    if not ss:
        print(s)
        print(ss)