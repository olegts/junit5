#!/bin/bash

export JAVA_HOME=/Users/oleg_tsal-tsalko/dev/jdk-9.jdk/Contents/Home

echo
echo "*** Compiling junit.platform.suite.api module ***"
${JAVA_HOME}/bin/javac --module-path=../mlib \
    -d mods/junit.platform.suite.api \
    $(find src/main/java -name "*.java")