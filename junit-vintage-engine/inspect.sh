#!/bin/bash

export JAVA_HOME=/Users/oleg_tsal-tsalko/dev/jdk-9.jdk/Contents/Home

echo
echo "*** JAR module dependencies ***"
${JAVA_HOME}/bin/jdeps -s build/libs/junit-vintage-engine-4.12.0-SNAPSHOT.jar

echo
echo "*** JAR dependencies info ***"
${JAVA_HOME}/bin/jdeps build/libs/junit-vintage-engine-4.12.0-SNAPSHOT.jar

echo
echo "*** Automatic module preview ***"
${JAVA_HOME}/bin/jar -d --file=build/libs/junit-vintage-engine-4.12.0-SNAPSHOT.jar