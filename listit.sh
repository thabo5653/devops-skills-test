
file="./directories.list"
echo "line one's line" > $file
echo "second line " >> $file
echo "third line" >> $file
echo "4th line" >> $file

read -p "Please enter integer number: " amt


if [[ $amt =~ ^-?[0-9]+$ ]]
    then
    	for (( i=1; i<$amt+1;i++ ))
    do
        head -3 $file
    done
    else
        echo "Sorry integers only"
 fi

    
