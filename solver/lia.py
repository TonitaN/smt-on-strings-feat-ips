import subprocess
from .structures import *

def generate_ints():
    for i in  ['Pineapple', 'Cherry', 'Avocado', 'Orange', 'Peach', 'Pineberry',
                       'Tamarind', 'Yuzu', 'Lemon', 'Jackfruit', 'Coconut', 'Kumquat', 'Apricot',
                       'Banana', 'Cucumber', 'Fig', 'Pear', 'Blackberry', 'Lime', 'Soursop',
                       'Watermelon', 'Raspberry', 'Barsik', 'Papaya', 'Guava', 'Mango', 'Kiwi',
                       'Passionfruit', 'Durian', 'Grape', 'Starfruit', 'Strawberry', 'Quince',
                       'Dragonfruit', 'Blueberry', 'Mulberry', 'Gooseberry', 'Plum', 'Apple', 'Persimmon']:
        yield i
    
    i = -1
    while True:
        i+=1
        yield f'var_name_{i}'

def sliced_elements(literal_lists):
    return list(map(lambda x: x.atom.my_string2.cont, filter(lambda x: x.atom.ltype == "str.contains" and x.negation and x.atom.my_string2.stype == "const" and len(x.atom.my_string2.cont) == 1, literal_lists)))

def sliced_ncont(literal, sliced):
    s = literal.atom.my_string2;
    if (literal.atom.ltype == "str.contains"):
        if s.stype == "const":
            if (sliced.count(s.cont) > 0):
                return True
    return False               

class Lia_Formula():
    """
    self.variables нужен для удобного состаления ассертов
    self.atom_to_lia и self.string_to_lia - для мемоизации
    и получения интерпретации в рамках теории lia
    """

    def __init__(self, formula=None, m=None):

        self.varnames_generator = generate_ints()

        self.atom_to_lia = {}
        self.string_to_lia = {}
        self.variables = []

        self.clause_strings = []

        if formula is not None and m is not None and not(isinstance(m,str)) or formula is None and m is None:
            raise Exception('Некорректные параметры для создания Lia_Formula')
        elif formula:
            self.formula = formula
            for clause in formula.clauses:
                if not isinstance(m,str):
                    if all(map(lambda x: not x.negation, clause.literals)):
                        clause_interpret = self.clause_interpretation_in_lia(clause)
                        self.clause_strings.append(f'(assert {clause_interpret})')
                else:
                    if all(map(lambda x: not x.negation or sliced_ncont(x,m), clause.literals)):
                        clause_interpret = self.get_clause_slice(clause,m)
                        self.clause_strings.append(f'(assert {clause_interpret})')
        else:
            self.literals = list(map(lambda x: x.get_conjugate(), filter(lambda x: x.negation, m)))
            for literal in self.literals:
                new_clause_str = self.literal_interpretation_in_lia(literal)
                self.clause_strings.append(f'(assert {new_clause_str})')

    def __str__(self):
        s = '###LIA_FORMULA###\n'
        s += 'VARIABLES:\n'
        s+= ' '.join(self.variables) + '\n'
        s += 'FAKE STRINGS:\n    '
        s += ''.join([f'\n    {y} <- {x}' if 'str.re' in x.stype else '' for x,
                     y in self.string_to_lia.items()])
        s += '\nATOMS:\n    '
        s += '\n    '.join([f'{y} <- {x}' for x,
                           y in self.atom_to_lia.items()])
        s += '\n\n'
        return s
 
    def get_literal_slice(self, literal: Literal, sliced):
        if literal.atom in self.atom_to_lia:
            return self.atom_to_lia[literal.atom]

        if literal.negation:
            ss = self.get_string_slice(literal.atom.my_string1, sliced)
            sss = f'(= {ss} 0)'
            self.atom_to_lia[literal.atom] = sss
        else:
            sign = {'=': '=', 'str.contains': '>='}[literal.atom.ltype]
            lia_string1 = self.get_string_slice(literal.atom.my_string1, sliced)
            lia_string2 = self.get_string_slice(literal.atom.my_string2, sliced)
            sss = f'({sign} {lia_string1} {lia_string2})'
        self.atom_to_lia[literal.atom] = sss
        return sss    
         
    
    def get_string_slice(self, my_string: My_String, sliced):
        if my_string in self.string_to_lia:
            return self.string_to_lia[my_string]

        if my_string.stype == 'const':
            self.string_to_lia[my_string] = str(my_string.cont.count(sliced))
            return str(my_string.cont.count(sliced))

        if my_string.stype == 'str.++':
            s = f'(+ {" ".join([self.get_string_slice(x, sliced) for x in my_string.concats_strs])})'
            self.string_to_lia[my_string] = s
            return s

        if my_string.stype == 'variable':
            self.variables.append(my_string.var_name)
            self.string_to_lia[my_string] = my_string.var_name
            return my_string.var_name

        name = next(self.varnames_generator)
            # self.string_interpretation_in_lia(mss)
        if my_string.replace_strs[1].stype == "const" and len(my_string.replace_strs[1].cont) == 1 and my_string.replace_strs[1].cont == sliced:
            s = f'(+ (- {self.get_string_slice(my_string.replace_strs[0],sliced)} {self.get_string_slice(my_string.replace_strs[0],sliced)} ) (* {self.get_string_slice(my_string.replace_strs[0],sliced)} {self.get_string_slice(my_string.replace_strs[2],sliced)}))'
        else:    
            s = f'(+ (- {self.get_string_slice(my_string.replace_strs[0],sliced)} (* {name} {self.get_string_slice(my_string.replace_strs[1],sliced)}) ) (* {name} {self.get_string_slice(my_string.replace_strs[2],sliced)}))'
        self.string_to_lia[my_string] = s 
        self.variables.append(name)
        return s        
    
    def atom_interpretation_in_lia(self, atom: Atom):
        if atom in self.atom_to_lia:
            return

        sign = {'=': '=', 'str.contains': '>='}[atom.ltype]
        lia_string1 = self.string_interpretation_in_lia(atom.my_string1)
        lia_string2 = self.string_interpretation_in_lia(atom.my_string2)
        self.atom_to_lia[atom] = f'({sign} {lia_string1} {lia_string2})'

    def string_interpretation_in_lia(self, my_string: My_String):
        """
        возвращает строковую интерпретацию объекта типа My_String в рамках lia,
        а также рекурсивно строит эти интерпретации для вложенных My_String`ов
        """
        if my_string in self.string_to_lia:
            return self.string_to_lia[my_string]

        if my_string.stype == 'const':
            self.string_to_lia[my_string] = str(len(my_string.cont))
            return str(len(my_string.cont))

        if my_string.stype == 'str.++':
            s = f'(+ {" ".join([self.string_interpretation_in_lia(x) for x in my_string.concats_strs])})'
            self.string_to_lia[my_string] = s
            return s

        if my_string.stype == 'variable':
            self.variables.append(my_string.var_name)
            self.string_to_lia[my_string] = my_string.var_name
            return my_string.var_name

        name = next(self.varnames_generator)
            # self.string_interpretation_in_lia(mss)
        s = f'(+ (- {self.string_interpretation_in_lia(my_string.replace_strs[0])} (* {name} {self.string_interpretation_in_lia(my_string.replace_strs[1])}) ) (* {name} {self.string_interpretation_in_lia(my_string.replace_strs[2])}))'
        self.string_to_lia[my_string] = s 
        self.variables.append(name)
        return s

    def clause_interpretation_in_lia(self, clause: Clause):
        literals_interpretations = [self.literal_interpretation_in_lia(
            literal) for literal in clause.literals]

        return f'(or {" ". join(literals_interpretations)})'

    def get_clause_slice(self, clause: Clause, sliced):
        literals_interpretations = [self.get_literal_slice(
            literal, sliced) for literal in clause.literals]
        return f'(or {" ". join(literals_interpretations)})'

    def literal_interpretation_in_lia(self, literal: Literal):
        if literal.atom not in self.atom_to_lia:
            self.atom_interpretation_in_lia(literal.atom)

        return self.atom_to_lia[literal.atom]

    def check_sat(self):
        smt2_strings = ['(set-logic QF_LIA)']

        for var_name in self.variables:
            smt2_strings.append(f'(declare-fun {var_name} () Int)')
            smt2_strings.append(f'(assert (>= {var_name} 0))')

        smt2_strings.extend(self.clause_strings)

        smt2_strings.append('(check-sat)')

        temp = 'temp.smt2'
        try:
            with open(temp, 'w+') as f:
                for s in smt2_strings:
                    f.write(s+'\n')
        except:
            raise Exception('Ошибка при создании/открытии временного файла')

#        for s in smt2_strings:
#            print(s)

        return not 'unsat' in str(subprocess.check_output(['z3', '-smt2', temp]), encoding='utf-8')
