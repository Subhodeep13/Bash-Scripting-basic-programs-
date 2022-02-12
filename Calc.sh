#! /bin/bash
##!/bin/bash when used in scripts is used to instruct the operating system to use bash as a command interpreter
echo "********************Calculator****************"i
#reads that this is a calculator script 



# if condition which takes in input to specify the prescision of deceimals the user wants if nothing is specified it will give decimals of 3 places 
if [ "$1" = "-p" ]; then
        precision=$2
        shift 2
else
     precision=3
fi

# redireection used and the enviroment is specified using bc to perform all shorts for computations
bc << _EOF_ #_EOF signifies the exit code 
#specifing scale to precision which the user as provided as an input 
scale=$precision
$@ #parameters taken as to calculate 
_EOF_
