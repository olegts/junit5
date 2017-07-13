#!/usr/bin/env bash

export IDEA_LIBS="/Applications/IntelliJ IDEA CE.app/Contents/lib"
export IDEA_JUNIT_PLUGIN_LIBS="/Applications/IntelliJ IDEA CE.app/Contents/plugins/junit/lib"

#org.junit.mytests.SimpleTest                         -> works
#org.junit.platform.commons.util.CollectionUtilsTests -> doesn't work
echo "Run org.junit.mytests.SimpleTest by Intellij IDEA JUnit runner using module path"
${JAVA_HOME}/bin/java \
-p mlib:lib \
--add-modules junit.jupiter.engine,junit.jupiter.params,junit.platform.launcher \
-cp "${IDEA_LIBS}/idea_rt.jar:${IDEA_JUNIT_PLUGIN_LIBS}/junit-rt.jar:${IDEA_JUNIT_PLUGIN_LIBS}/junit5-rt.jar:platform-tests/build/classes/java/test:classpath/byte-buddy-agent-1.6.11.jar:classpath/byte-buddy-agent-1.6.11.jar" \
com.intellij.rt.execution.junit.JUnitStarter -ideVersion5 -junit5 org.junit.mytests.SimpleTest

echo "Run org.junit.mytests.SimpleTest by org.junit.platform.console.ConsoleLauncher using module path"
${JAVA_HOME}/bin/java \
-p mlib:lib \
-cp "platform-tests/build/classes/java/test:classpath/byte-buddy-agent-1.6.11.jar:classpath/byte-buddy-agent-1.6.11.jar" \
-m junit.platform.console -c org.junit.mytests.SimpleTest

#echo "Run org.junit.platform.commons.util.CollectionUtilsTests using classpath"
#${JAVA_HOME}/bin/java \
#-p lib \
#-cp "${IDEA_LIBS}/idea_rt.jar:${IDEA_JUNIT_PLUGIN_LIBS}/junit-rt.jar:${IDEA_JUNIT_PLUGIN_LIBS}/junit5-rt.jar:platform-tests/build/classes/java/test:classpath/byte-buddy-agent-1.6.11.jar:classpath/byte-buddy-agent-1.6.11.jar:mlib/junit.platform.commons@1.0.0.jar:mlib/junit.platform.engine@1.0.0.jar:mlib/junit.platform.launcher@1.0.0.jar:mlib/junit.jupiter.api@5.0.0.jar:mlib/junit.jupiter.engine@5.0.0.jar:mlib/junit.jupiter.params@5.0.0.jar" \
#com.intellij.rt.execution.junit.JUnitStarter -ideVersion5 -junit5 org.junit.platform.commons.util.CollectionUtilsTests