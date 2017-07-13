#!/bin/bash

#export JAVA_HOME=/Users/oleg_tsal-tsalko/dev/jdk-9.jdk/Contents/Home

echo
echo "*** Packaging junit.jupiter.params module into modular JAR ***"
${JAVA_HOME}/bin/jar --create \
    --file ../mlib/junit.jupiter.params@5.0.0.jar \
    --module-version 5.0.0 \
    -C mods/junit.jupiter.params .