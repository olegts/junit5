#!/usr/bin/env bash

#!/*TODO: Set correct path to Intellij IDEA libs directories on your machine*/
export IDEA_LIBS="/Applications/IntelliJ IDEA CE.app/Contents/lib"
export IDEA_JUNIT_PLUGIN_LIBS="/Applications/IntelliJ IDEA CE.app/Contents/plugins/junit/lib"

#org.junit.mytests.SimpleTest                         -> works
#org.junit.platform.commons.util.CollectionUtilsTests -> doesn't work
echo "Run org.junit.mytests.SimpleTest by Intellij IDEA JUnit runner using module path"
${JAVA_HOME}/bin/java \
#!/*TODO: Add missing bits*/
-cp "${IDEA_LIBS}/idea_rt.jar:${IDEA_JUNIT_PLUGIN_LIBS}/junit-rt.jar:${IDEA_JUNIT_PLUGIN_LIBS}/junit5-rt.jar" \
com.intellij.rt.execution.junit.JUnitStarter -ideVersion5 -junit5 org.junit.mytests.SimpleTest

echo "Run org.junit.mytests.SimpleTest by org.junit.platform.console.ConsoleLauncher using module path"
${JAVA_HOME}/bin/java \
#!/*TODO: Use junit.platform.console module to run your tests*/