#!/bin/bash

export JAVA_HOME=/Users/oleg_tsal-tsalko/dev/jdk-9.jdk/Contents/Home

echo
echo "*** Compiling junit.platform.commons module ***"
${JAVA_HOME}/bin/javac --module-path=mods \
    -d mods/junit.platform.commons \
    $(find src/main/java -name "*.java")