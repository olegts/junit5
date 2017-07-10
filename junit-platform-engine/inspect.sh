#!/bin/bash

export JAVA_HOME=/Users/oleg_tsal-tsalko/dev/jdk-9.jdk/Contents/Home

echo
echo "*** JAR module dependencies ***"
${JAVA_HOME}/bin/jdeps -s build/libs/junit-platform-engine-1.0.0-SNAPSHOT.jar

echo
echo "*** JAR dependencies info ***"
${JAVA_HOME}/bin/jdeps build/libs/junit-platform-engine-1.0.0-SNAPSHOT.jar

echo
echo "*** Automatic module preview ***"
${JAVA_HOME}/bin/jar -d --file=build/libs/junit-platform-engine-1.0.0-SNAPSHOT.jar

echo
echo "*** Automatic module preview for opentest4j lib ***"
${JAVA_HOME}/bin/jar -d --file=lib/opentest4j-1.0.0-SNAPSHOT.jar

echo
echo "*** Automatic module preview for assertj lib ***"
${JAVA_HOME}/bin/jar -d --file=lib/assertj-core-3.8.0-sources.jar