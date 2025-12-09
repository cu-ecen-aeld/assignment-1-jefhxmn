#!/bin/sh

if [ $# -lt 2 ]; then 
    echo "Argument amount is wrong"
    exit 1
fi

filedir=$1
searchstr=$2

if [ ! -d "$filedir" ]; then
    echo "$filedir is not a valid directory"
    exit 1
fi

X=$(find "$filedir" -type f | wc -l)
Y=$(grep -R "$filedir" 2>/dev/null | wc -l)

echo "The number of filesare $X and the number of matching lines are $Y" 

exit 0