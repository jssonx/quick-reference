file=$1
awk 'BEGIN {cnt=0} {sum+=($1);cnt+=1} END {print (sum/cnt)}' $file