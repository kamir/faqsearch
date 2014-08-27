#!/bin/sh
#
# Create an index to strore FAQ data in Cloudera-Search
# 

export FLUME_SPOOL_DIR=/home/mirko.kaempf/FAQDATA/flume/faq_files_spooldir
export COLLECTION=faq_collection1

clear
echo Run a Flume agent 
echo =================
echo
echo Collection name: $COLLECTION
echo Spool-Directory: $FLUME_SPOOL_DIR
echo 
echo Agent 1 : Observe a SPOOL-directory and import CSV files
echo Agent 2 : Listen on an HTTP-Port 9090 and import new JSON records
echo
read -p "Select an agent (agent1, agent2)    > " a
read -p "Debug mode (Info, Warn, Trace)      > " m


cd ../conf
flume-ng agent --conf /etc/flume-ng/conf --conf-file faq-flume-v1.conf --name $a -Dflume.root.logger=$m,console > $a.log
cd ../bin

echo Done.

