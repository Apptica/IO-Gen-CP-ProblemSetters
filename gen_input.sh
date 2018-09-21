#this script generates certain counts of input from the generator code
#The script is intentionally made with a delay so that rand() works good
#Its time to smile :)
eval "g++ $(pwd)/$1"
for ((i = $2; i <= $3; i++))
do
    if (($i < 10))
    then
        echo "Generating a new input file in0$i.txt"
        eval "$(pwd)/./a.out >$(pwd)/in0$i.txt"
    else    
        echo "Generating a new input file in$i.txt"
        eval "$(pwd)/./a.out >$(pwd)/in$i.txt"
    fi
    sleep 2
done