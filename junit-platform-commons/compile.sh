#!/bin/bash

if [ -z ${JAVA_HOME} ]; then
    export JAVA_HOME=/Users/oleg_tsal-tsalko/dev/jdk-9.jdk/Contents/Home
fi

echo
echo "*** Compiling junit.platform.commons module ***"
${JAVA_HOME}/bin/javac
    #!/*TODO: Compile junit-platform-commons sources into mods/junit.platform.commons folder*/