#!/bin/bash

if [ -z ${JAVA_HOME} ]; then
    echo "Please set you JAVA_HOME to point to your Java 9 distribution. See MIGRATION.md for more details"
fi

echo
echo "*** Compiling junit.vintage.engine module ***"
${JAVA_HOME}/bin/javac
    #!/*TODO: Compile junit-vintage-engine sources into mods/junit.vintage.engine folder*/