#!/bin/bash

#export JAVA_HOME=/Users/oleg_tsal-tsalko/dev/jdk-9.jdk/Contents/Home

echo
echo "*** Packaging junit.platform.commons module into modular JAR ***"
${JAVA_HOME}/bin/jar --create \
    --file ../mlib/junit.platform.commons@1.0.0.jar \
    --module-version 1.0.0 \
    -C mods/junit.platform.commons .