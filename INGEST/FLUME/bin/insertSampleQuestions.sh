#!/bin/sh
#
# Insert some initial test data ...
# 
# Default collection:  faq_collection1
#
########################################################################
clear
echo Insert some questions now ... 
 
curl -X POST -H 'Content-Type: application/json; charset=UTF-8' -d '[{"author":"Knut","question":"What is the current time?","answer":"04:09 AM","context":"dev"}]' http://training03.mtv.cloudera.com:9090/ > response.log


cat response.log
echo Done.





