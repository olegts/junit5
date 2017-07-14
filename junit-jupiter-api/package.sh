#!/bin/bash

if [ -z ${JAVA_HOME} ]; then
    echo "Please set you JAVA_HOME to point to your Java 9 distribution. See MIGRATION.md for more details"
fi

echo
echo "*** Packaging junit.jupiter.api module into modular JAR ***"
${JAVA_HOME}/bin/jar
    #!/*TODO: Package mods/junit.jupiter.api binaries into mlib/junit.jupiter.api@5.0.0.jar*/