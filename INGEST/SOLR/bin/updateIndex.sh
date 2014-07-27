#!/bin/sh
#
# Create an index to strore FAQ data in Cloudera-Search
# 
# Default collection:  faq_collection1
#
########################################################################
clear
echo Create the index now ... 

export COLLECTION=faq_collection1
export FLUME_SPOOL_DIR=/flume/faq_files_spooldir

if [ -n $1 ] 
then	
	echo Default collection:  faq_collection1
else
	COLLECTION=$1
	echo Collection name: $COLLECTION
fi

echo Spool-Directory: $FLUME_SPOOL_DIR
mkdir $FLUME_SPOOL_DIR
mkdir $FLUME_SPOOL_DIR/$COLLECTION

solrctl --zk dev.loudacre.com:2181/solr instancedir --update $COLLECTION ./../conf

echo Done.




