#!/bin/sh
#
# Create an index to strore FAQ data in Cloudera-Search
# 

export FLUME_SPOOL_DIR=/flume/faq_files_spooldir
export COLLECTION=faq_collection1

clear
echo Run the Flume agent now ... 
echo 
echo Collection name: $COLLECTION
echo Spool-Directory: $FLUME_SPOOL_DIR
echo 
read -p "Select agent > (agent1,agent2)   :" a
read -p "Debug mode   > (Info,Warn,Trace) :" m


cd ../conf
flume-ng agent --conf /etc/flume-ng/conf --conf-file faq-flume-v1.conf --name $a -Dflume.root.logger=$m,console > $a.log
cd ../bin

echo Done.

