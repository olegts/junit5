#!/usr/bin/env bash

export IDEA_LIBS="/Applications/IntelliJ IDEA CE.app/Contents/lib"
export IDEA_JUNIT_PLUGIN_LIBS="/Applications/IntelliJ IDEA CE.app/Contents/plugins/junit/lib"

/Users/oleg_tsal-tsalko/dev/jdk-9.jdk/Contents/Home/bin/java \
-p mlib:lib \
--add-modules junit.jupiter.engine,junit.jupiter.params,junit.platform.launcher \
-cp "${IDEA_LIBS}/idea_rt.jar:${IDEA_JUNIT_PLUGIN_LIBS}/junit-rt.jar:${IDEA_JUNIT_PLUGIN_LIBS}/junit5-rt.jar:platform-tests/build/classes/java/test:lib/assertj-core-3.8.0.jar:lib/jopt-simple-5.0.3.jar:lib/opentest4j-1.0.0-SNAPSHOT.jar:lib/junit-4.12.jar:testLib/log4j-api-2.8.2.jar:testLib/log4j-core-2.8.2.jar:testLib/log4j-jul-2.8.2.jar:testLib/byte-buddy-1.6.11.jar:testLib/byte-buddy-agent-1.6.11.jar:testLib/objenesis-2.5.jar:testLib/hamcrest-core-1.3.jar:testLib/mockito-core-2.7.22.jar" \
com.intellij.rt.execution.junit.JUnitStarter -ideVersion5 -junit5 org.junit.mytests.SimpleTest

#org.junit.mytests.SimpleTest                         -> works
#org.junit.platform.commons.util.CollectionUtilsTests -> doesn't work