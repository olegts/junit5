#!/bin/bash

#export JAVA_HOME=/Users/oleg_tsal-tsalko/dev/jdk-9.jdk/Contents/Home

echo
echo "*** Compiling junit.jupiter.engine module ***"
${JAVA_HOME}/bin/javac --module-path=../mlib:../lib \
    -d mods/junit.jupiter.engine \
    $(find src/main/java -name "*.java")