#!/bin/bash

JAVA_HOME=$(/usr/libexec/java_home -v 9)
JAVA_MODULES_HOME=$JAVA_HOME/jmods

rm -rf target
mkdir -p target/classes
mkdir -p target/modules
mkdir -p target/jars

javac --module-path src/main/java/ -d target/classes $(find src/main/java -name '*.java')
jar -c -f target/jars/com.github.inikolaev.main.jar --main-class com.github.inikolaev.Main -C target/classes .
$JAVA_HOME/bin/jlink --compress=2 --module-path target/jars:$JAVA_MODULES_HOME --add-modules com.github.inikolaev.main --output target/image
