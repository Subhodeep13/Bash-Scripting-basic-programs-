#! /bin/bash

#specifying a function mydate which echos out date 
mydate(){
        echo "today is:"
        date
        echo "have a GREAT day !"
}
# asking the user for an input , here as his or her name 
echo -n "whats your name"
read r
#giving the input here with a string as salutation and further running the function 
echo "hey $r how are you doing"
     mydate
