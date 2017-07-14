#!/bin/bash

if [ -z ${JAVA_HOME} ]; then
    echo "Please set you JAVA_HOME to point to your Java 9 distribution. See MIGRATION.md for more details"
fi

echo
echo "*** Compiling junit.platform.runner module ***"
${JAVA_HOME}/bin/javac
    #!/*TODO: Compile junit-platform-runner sources into mods/junit.platform.runner folder*/