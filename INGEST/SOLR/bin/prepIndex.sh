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
export FLUME_SPOOL_DIR=/home/mirko.kaempf/FAQDATA/flume/faq_files_spooldir/faq_collection1

if [ -n $1 ] 
then	
	echo Default collection:  faq_collection1
else
	COLLECTION=$1
	echo Collection name: $COLLECTION
fi

echo Spool-Directory: $FLUME_SPOOL_DIR

#mkdir $FLUME_SPOOL_DIR
#mkdir $FLUME_SPOOL_DIR/$COLLECTION

#solrctl --zk dev.loudacre.com:2181/solr instancedir --create $COLLECTION ./../conf
#solrctl --zk dev.loudacre.com:2181/solr collection --create $COLLECTION

solrctl --zk training01.sjc.cloudera.com:2181/solr instancedir --create $COLLECTION ./../conf
solrctl --zk training01.sjc.cloudera.com:2181/solr collection --create $COLLECTION

echo Done.




