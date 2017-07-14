#!/bin/bash

if [ -z ${JAVA_HOME} ]; then
    echo "Please set you JAVA_HOME to point to your Java 9 distribution. See MIGRATION.md for more details"
fi

echo
echo "*** JAR module dependencies ***"
${JAVA_HOME}/bin/jdeps -s build/libs/junit-jupiter-engine-5.0.0-SNAPSHOT.jar

echo
echo "*** JAR dependencies info ***"
${JAVA_HOME}/bin/jdeps build/libs/junit-jupiter-engine-5.0.0-SNAPSHOT.jar

echo
echo "*** Automatic module preview ***"
${JAVA_HOME}/bin/jar -d --file=build/libs/junit-jupiter-engine-5.0.0-SNAPSHOT.jar