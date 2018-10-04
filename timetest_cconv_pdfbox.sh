#!/bin/bash

echo "---------------------------------------------------------"
java -version
java -cp target/ColorConvTest-1.0-SNAPSHOT-jar-with-dependencies.jar CConvPDFBox

echo "---------------------------------------------------------"
/opt/openjdk/jdk-9.0.4/bin/java -version
/opt/openjdk/jdk-9.0.4/bin/java -cp target/ColorConvTest-1.0-SNAPSHOT-jar-with-dependencies.jar CConvPDFBox

echo "---------------------------------------------------------"
/opt/openjdk/jdk-10.0.2/bin/java -version
/opt/openjdk/jdk-10.0.2/bin/java -cp target/ColorConvTest-1.0-SNAPSHOT-jar-with-dependencies.jar CConvPDFBox

echo "---------------------------------------------------------"
/opt/openjdk/jdk-11/bin/java -version
/opt/openjdk/jdk-11/bin/java -cp target/ColorConvTest-1.0-SNAPSHOT-jar-with-dependencies.jar CConvPDFBox

echo "---------------------------------------------------------"
/opt/openjdk/jdk-12/bin/java -version
/opt/openjdk/jdk-12/bin/java -cp target/ColorConvTest-1.0-SNAPSHOT-jar-with-dependencies.jar CConvPDFBox
