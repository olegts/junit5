#!/bin/bash

#export JAVA_HOME=/Users/oleg_tsal-tsalko/dev/jdk-9.jdk/Contents/Home

echo
echo "*** Packaging junit.vintage.engine module into modular JAR ***"
${JAVA_HOME}/bin/jar --create \
    --file ../mlib/junit.vintage.engine@4.12.0.jar \
    --module-version 4.12.0 \
    -C mods/junit.vintage.engine .