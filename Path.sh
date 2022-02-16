#! /bin/bash

echo ********PATH**************

old_IFS=$IFS;

echo $old_IF

IFS=":";

#helps you find the directory 
if [ "$1" == "-d" ]; then
        my_dir="$2"
        for dir in $PATH;
        do
                if [ -e "$dir/$my_dir" ]; then
                        echo "***********dir PRESENT in PATH*********"
                        echo $dir/$my_dir
                fi
        done
fi
#helps you find the command 
echo $IFS
if [ "$1" == "-c" ]; then
        my_com="$2";
        for dir in $PATH;
        do
                if [ -e "$dir/$my_com" ]; then
                        echo "**********Command PRESENT IN PATH*****"
                        echo $dir/$my_com
                fi
        done
fi



#helps find the dir in path 
if [ "$1" == "" ]; then
        for dir in $PATH;
        do
                echo "$dir"
        done
fi

IFS=$old_IFS
