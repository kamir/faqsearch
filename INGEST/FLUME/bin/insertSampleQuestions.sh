#!/bin/sh
#
# Insert some initial test data ...
# 
# Default collection:  faq_collection1
#
########################################################################
clear
echo Insert some questions now ... 
 
curl -X POST -H 'Content-Type: application/json; charset=UTF-8' -d '[{"author":"MK","question":"What time is it?","answer":"The best time for SOLR admin work.","context":"dev"}]' http://training03.mtv.cloudera.com:9090/ > response.log


cat response.log
echo Done.





