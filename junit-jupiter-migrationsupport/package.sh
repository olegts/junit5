#!/bin/bash

#export JAVA_HOME=/Users/oleg_tsal-tsalko/dev/jdk-9.jdk/Contents/Home

echo
echo "*** Packaging junit.jupiter.migrationsupport module into modular JAR ***"
${JAVA_HOME}/bin/jar --create \
    --file ../mlib/junit.jupiter.migrationsupport@5.0.0.jar \
    --module-version 5.0.0 \
    -C mods/junit.jupiter.migrationsupport .