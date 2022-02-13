#! /bin/bash
#signifies the language is bash 

#saving the current IFS as olf_IFS
old_IFS=$IFS
echo "$old_IFS"
#customizing IFS
IFS="_"
echo "value of IFS : $IFS"

#giving a variable and using a loop 
x="aa_bb_cc_dd_ee_ff"
 for i in $x:
 do
         echo $i
 done
 
# re orienting IFS to default 
IFS=$old_IFS
echo "value of IFS: $IFS"
