#!/bin/sh
#
# Import the FAQ documents from google docs ...
# 
# Default collection:  faq_collection1
#
########################################################################
clear

echo Import questions now ... 
 
curl https://docs.google.com/a/cloudera.com/spreadsheet/ccc?key=0AnwImjy2siFOdFRSQmwxS2ctZEhZaGZQR21ZdmVpM2c&usp=sharing&output=csv

echo Done.



