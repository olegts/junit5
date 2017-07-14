#!/bin/bash

if [ -z ${JAVA_HOME} ]; then
    echo "Please set you JAVA_HOME to point to your Java 9 distribution. See MIGRATION.md for more details"
fi

echo
echo "*** Packaging junit.platform.suite.api module into modular JAR ***"
${JAVA_HOME}/bin/jar
    #!/*TODO: Package mods/junit.platform.suite.api binaries into mlib/junit.platform.suite.api@1.0.0.jar*/