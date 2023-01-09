# 1
echo "Hello world!"
echo "Result of ls: "
ls
echo "OOOPS, here is the end of ls"

# 2
# Variable assignment does not support spaces
echo "locol variables"
year=2023
echo "This year is $year!"
echo "Last year is $[$year - 1]!"

# 3
# Passing parameters from the command line
# bash ./run.sh "[SHELL SCRIPT]" 2023
#         $0           $1         $2
command=$0
prompt=$1
year=$2
echo "$prompt Running $command"
echo "$prompt This year is $year"

# 4
# first runing things inside ` `
str=`echo 'Hello guys'`
echo "str is $str"

# 5
files=`ls`
for file in $files
do
    if test $file = "run.sh"
    then 
        echo "find myself"
    else
        echo "find file $file"
    fi
done

# 6
func() {
    echo "First arg $1"
    echo "Second arg $2"
    echo "All args $@"
    echo "Arg count $#"
}
func 1 2 3 4 5