for i in {47..149}
do
   echo "LIA test on $i-th model with slicing..." >> result
   python main.py benchmark/model_$i.smt2 >> result
done