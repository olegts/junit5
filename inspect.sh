#!/bin/bash

export JAVA_HOME=/Users/oleg_tsal-tsalko/dev/jdk-9.jdk/Contents/Home

echo
echo "*** Automatic module preview for jopt-simple lib ***"
${JAVA_HOME}/bin/jar -d --file=lib/jopt-simple-5.0.3.jar

echo
echo "*** Automatic module preview for opentest4j lib ***"
${JAVA_HOME}/bin/jar -d --file=lib/opentest4j-1.0.0-SNAPSHOT.jar

echo
echo "*** Automatic module preview for assertj lib ***"
${JAVA_HOME}/bin/jar -d --file=lib/assertj-core-3.8.0.jar

echo
echo "*** Automatic module preview for junit4 lib ***"
${JAVA_HOME}/bin/jar -d --file=lib/junit-4.12.jar

echo
echo "*** Automatic module preview for univocity lib ***"
${JAVA_HOME}/bin/jar -d --file=lib/univocity-parsers-2.4.1.jar