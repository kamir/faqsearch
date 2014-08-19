#!/bin/sh
#
# Insert some initial test data ...
# 
# Default collection:  faq_collection1
#
########################################################################
clear
echo Insert a questions now ... 
 
curl -X POST -H 'Content-Type: application/json; charset=UTF-8' -d '[{"tag":"website","type":"docu","question":"What time is it?","answer":"The best time for SOLR admin work.","context":"dev"}]' http://training03:9091/
curl -X POST -H 'Content-Type: application/json; charset=UTF-8' -d '[{"tag":"website","type":"src","question":"What time is later?","answer":"Still a good time for SOLR admin work.","context":"dev"}]' http://training03:9091/
curl -X POST -H 'Content-Type: application/json; charset=UTF-8' -d '[{"tag":"website src","type":"src","question":"What time is later?","answer":"Still a good time for SOLR admin work.","context":"test"}]' http://training03:9091/
curl -X POST -H 'Content-Type: application/json; charset=UTF-8' -d '[{"tag":"website url","type":"URL","author":"AB","question":"What time is later?","answer":"Still a good time for SOLR admin work.","context":"da"}]' http://training03:9091/
curl -X POST -H 'Content-Type: application/json; charset=UTF-8' -d '[{"tag":"website mail","type":"mail","author":"CD","question":"What time is later?","answer":"Still a good time for SOLR admin work.","context":"admin"}]' http://training03:9091/

echo Done.





