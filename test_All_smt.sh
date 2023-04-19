for i in {0..46}
do
   echo "LIA test on $i-th model..." >> result
   python main.py benchmark/model_$i.smt2 >> result
done