#!/bin/bash
#10002 is ip port, this is kill the process with port 10002
#from : http://blog.csdn.net/reage11/article/details/8615236
name=$(lsof -i:10002|tail -1|awk '"$1"!=""{print $2}')  
if [ -z $name ]  
then  
    echo "No process can be used to killed!"  
    exit 0  
fi  
id=$(lsof -i:10002|tail -1|awk '"$1"!=""{print $2}')  
kill -9 $id  
  
echo "Process name=$name($id) kill!"  
exit 0  

