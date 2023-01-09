exp_times=100
res_file=tmp_res
echo "" > $res_file
for i in `seq 1 $expr_times`
do
    bash ./run_exp.sh | sed -n '2 p' | awk '{print $2}' >> $res_file
done
awk '
BEGIN{cnt=0} 
{sum+=$1;cnt++;} 
END{print sum/cnt}
' $res_file