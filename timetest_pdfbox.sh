#!/bin/bash

echo "---------------------------------------------------------"
java -version
java -jar pdfbox-app-2.0.11.jar PDFToImage -time test.pdf -prefix test-08-

echo "---------------------------------------------------------"
/opt/openjdk/jdk-9.0.4/bin/java -version
/opt/openjdk/jdk-9.0.4/bin/java -jar pdfbox-app-2.0.11.jar PDFToImage -time test.pdf -prefix test-09-

echo "---------------------------------------------------------"
/opt/openjdk/jdk-10.0.2/bin/java -version
/opt/openjdk/jdk-10.0.2/bin/java -jar pdfbox-app-2.0.11.jar PDFToImage -time test.pdf -prefix test-10-

echo "---------------------------------------------------------"
/opt/openjdk/jdk-11/bin/java -version
/opt/openjdk/jdk-11/bin/java -jar pdfbox-app-2.0.11.jar PDFToImage -time test.pdf -prefix test-11-

echo "---------------------------------------------------------"
/opt/openjdk/jdk-12/bin/java -version
/opt/openjdk/jdk-12/bin/java -jar pdfbox-app-2.0.11.jar PDFToImage -time test.pdf -prefix test-12-
