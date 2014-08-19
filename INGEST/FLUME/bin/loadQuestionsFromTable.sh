#!/bin/sh
#
# Import the FAQ documents from google docs ...
# 
# Default collection:  faq_collection1
#
########################################################################
clear

echo Import questions now ... 
 
curl --silent https://docs.google.com/a/cloudera.com/spreadsheet/pub?key=0AnwImjy2siFOdFRSQmwxS2ctZEhZaGZQR21ZdmVpM2c&single=true&gid=0&exportFormat=csv

echo Done.



