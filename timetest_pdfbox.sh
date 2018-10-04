#!/bin/bash

source env.sh

echo "-------------------"
echo "|TEST PDFToImage  |"
echo "-------------------"

echo "---------------------------------------------------------"
${JAVA_8}/bin/java -version
${JAVA_8}/bin/java ${JAVA_OPTS} -jar pdfbox-app-2.0.11.jar PDFToImage -time test.pdf -prefix test-08-

echo "---------------------------------------------------------"
${JAVA_9}/bin/java -version
${JAVA_9}/bin/java ${JAVA_OPTS} -jar pdfbox-app-2.0.11.jar PDFToImage -time test.pdf -prefix test-09-

echo "---------------------------------------------------------"
${JAVA_10}/bin/java -version
${JAVA_10}/bin/java ${JAVA_OPTS} -jar pdfbox-app-2.0.11.jar PDFToImage -time test.pdf -prefix test-10-

echo "---------------------------------------------------------"
${JAVA_11}/bin/java -version
${JAVA_11}/bin/java ${JAVA_OPTS} -jar pdfbox-app-2.0.11.jar PDFToImage -time test.pdf -prefix test-11-

echo "---------------------------------------------------------"
${JAVA_12}/bin/java -version
${JAVA_12}/bin/java ${JAVA_OPTS} -jar pdfbox-app-2.0.11.jar PDFToImage -time test.pdf -prefix test-12-

