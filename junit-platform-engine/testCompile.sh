#!/bin/bash

#export JAVA_HOME=/Users/oleg_tsal-tsalko/dev/jdk-9.jdk/Contents/Home

echo
echo "*** Compiling junit.platform.engine module tests ***"
${JAVA_HOME}/bin/javac --module-path=../mlib:../lib \
    -d mods/junit.platform.engine.tests \
    $(find src/test/java -name "*.java")