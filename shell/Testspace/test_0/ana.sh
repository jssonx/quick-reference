# bash ./ana.sh ./req_time
resultfile=$1

sort -g $resultfile > $resultfile-sort

lineno=`wc -l $resultfile | awk '{print $1}'`

# echo $lineno
p99_line=$[$lineno * 99 / 100]
# echo $p99_line

sed -n "$p99_line p" $resultfile-sort 

awk -v lineno=$lineno '
BEGIN{cnt=0}
{if(cnt % 2 == 0) print(cnt/lineno" "$1);
cnt++}' $resultfile-sort > $resultfile-cdf