#!/bin/bash

DO_GET=1

if [ $DO_GET -eq 1 ]
then
    wget http://www-eu.apache.org/dist/pdfbox/2.0.11/pdfbox-app-2.0.11.jar
    wget https://github.com/apache/pdfbox/raw/trunk/pdfbox/src/main/resources/org/apache/pdfbox/resources/icc/ISOcoated_v2_300_bas.icc
fi
    
mvn process-resources
mvn install

