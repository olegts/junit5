#!/bin/bash

if [ -z ${JAVA_HOME} ]; then
    echo "Please set you JAVA_HOME to point to your Java 9 distribution. See MIGRATION.md for more details"
fi

echo
echo "*** Packaging junit.platform.runner module into modular JAR ***"
${JAVA_HOME}/bin/jar
    #!/*TODO: Package mods/junit.platform.runner binaries into mlib/junit.platform.runner@1.0.0.jar*/