#this script uses the argument as count of the files you want to generate the output for as per hackerearth
eval "g++ $(pwd)/$1"
for ((i = $2; i <= $3; i++))
do
    if (($i < 10))
    then
        echo "Generating a new output file out0$i.txt"
        eval "$(pwd)/./a.out <$(pwd)/in0$i.txt >$(pwd)/out0$i.txt"
    else    
        echo "Generating a new output file out$i.txt"
        eval "$(pwd)/./a.out <$(pwd)/in$i.txt >$(pwd)/out$i.txt"
    fi
done