#!/bin/bash

export JAVA_HOME=/Users/oleg_tsal-tsalko/dev/jdk-9.jdk/Contents/Home

echo
echo "*** Compiling junit.jupiter.params module ***"
${JAVA_HOME}/bin/javac --module-path=../mlib:../lib \
    -d mods/junit.jupiter.params \
    $(find src/main/java -name "*.java")