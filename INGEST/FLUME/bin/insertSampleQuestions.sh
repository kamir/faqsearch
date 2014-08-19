#!/bin/sh
#
# Insert some initial test data ...
# 
# Default collection:  faq_collection1
#
########################################################################
clear
echo Insert a questions now ... 
 
curl -X POST -H 'Content-Type: application/json; charset=UTF-8' -d '[{"author":"MK","question":"What time is it?","answer":"The best time for SOLR admin work.","context":"dev"}]' http://training03:9090/
curl -X POST -H 'Content-Type: application/json; charset=UTF-8' -d '[{"author":"MK","question":"What time is later?","answer":"Still a good time for SOLR admin work.","context":"dev"}]' http://training03:9090/
curl -X POST -H 'Content-Type: application/json; charset=UTF-8' -d '[{"author":"AB","question":"What time is later?","answer":"Still a good time for SOLR admin work.","context":"test"}]' http://training03:9090/
curl -X POST -H 'Content-Type: application/json; charset=UTF-8' -d '[{"author":"AB","question":"What time is later?","answer":"Still a good time for SOLR admin work.","context":"da"}]' http://training03:9090/
curl -X POST -H 'Content-Type: application/json; charset=UTF-8' -d '[{"author":"CD","question":"What time is later?","answer":"Still a good time for SOLR admin work.","context":"admin"}]' http://training03:9090/

echo Done.





