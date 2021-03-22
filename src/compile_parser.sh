#! /bin/bash

#### compile_parser.sh
#### /home/laurence/3DLDF-2.0.3/src/compile_parser.sh

#### Created Mon 22 Mar 2021 08:44:22 AM CET by Laurence D. Finston (LDF)

#echo $1

if [ -f ./parser.o ];  
then 
    echo -n "parser.o exists. ";  
    echo -n "Do you want to compile parser.c++? (y/n) ";  ## Actually, any character other than 
    read X;                                               ## 'y' or 'Y' causes compilation to be skipped. 
    #echo "X == $X"; 
    if test $X == "y" || test $X == "Y"; 
    then
	make parser.c++
	echo "Compiling 'parser.c++'.  This may take awhile ... ";
	$1 -c -o parser.o parser.c++
    else 
	echo "Not compiling 'parser.c++'.";
    fi 
else 
    echo "parser.o doesn't exist.  Making parser.o"; 
    echo "Compiling 'parser.c++'.  This may take awhile ... ";
    $1 -c -o parser.o parser.c++
fi

#     if [[ $X -eq 'y' ]];
#     then
# 	echo "X == y";
#     else
# 	echo "X != y";
#     fi; 
# else
#     echo "parser.o doesn't exist.  Making parser.o"; 
#     echo "Compiling 'parser.c++'.  This may take awhile ... ";
# fi
