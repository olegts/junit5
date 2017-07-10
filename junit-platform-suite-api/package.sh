#!/bin/bash

export JAVA_HOME=/Users/oleg_tsal-tsalko/dev/jdk-9.jdk/Contents/Home

#mkdir -p mlib

echo
echo "*** Packaging junit.platform.suite.api module into modular JAR ***"
${JAVA_HOME}/bin/jar --create \
    --file ../mlib/junit.platform.suite.api@1.0.0.jar \
    --module-version 1.0.0 \
    -C mods/junit.platform.suite.api .