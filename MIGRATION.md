#JUNIT 5 MIGRATION TO JAVA 9 MODULES

This is a small guide on how to partially migrate JUnit 5 platform to Java 9 modules.
This is more a case study for "*JUG Java 9 Jigsaw HackSession*" rather than complete migration of JUnit 5 platform to Java 9.
The goal is to show iterative approach of migrating real-life multi-module project to Java 9.

##PREREQUISITES

1. Please make sure you have JDK 9 installed/available on your machine and ensure that `${JAVA_HOME}` is correctly set.
You can download latest JDK 9 Jigsaw early access build from here - http://jdk.java.net/jigsaw.
I was using `9-ea+175-jigsaw-nightly` build.

2. You should be able to build project by Gradle using following command `gradlew build` from the root of the project.

3. In this case study we gonna use `.sh` scripts, so if you are on Windows machine please make sure you have `cygwin` or any other tool available for you.
Alternatively of course you can use similar `.bat` scripts if you like though...

##IMPORT AND BUILD

###Intellij IDEA

Import project as Gradle project and all submodules should be correctly resolved and imported.
You can use Java 9 SDK and Java 9 language level in IDEA.
Latest versions of Intellij IDEA already have support for Java 9 modules. I was using `2017.1.4 CE` version.
See https://www.jetbrains.com/help/idea/2017.1/getting-started-with-java-9-module-system.html for more details.

###Gradle
Build project as normal Gradle project with 1.8 source and target level.
See original JUnit 5 README.md file for more details.
I haven't tried to make Gradle to build project for Java 9.
You can play with that but it's out of scope for this case study...
> [NOTE]: Along the way once you start adding `module-info.java` descriptors to your modules your Gradle build might fail. 
In this case please use `unapplyModules.sh` and `reapplyModules.sh` scripts to switch between working Gradle build and working Java 9 custom build scripts...   

##MIGRATION STEPS

We gonna migrate JUnit 5 modules one-by-one in bottom-up manner in following order:
- junit-platform-commons
- junit-platform-suite-api
- junit-platform-engine
- junit-platform-launcher
- junit-platform-console
- junit-jupiter-api
- junit-jupiter-engine
- junit-jupiter-params
- junit-jupiter-migrationsupport
- junit-vintage-engine

> [NOTE]: Migration of other modules is out of scope...

At root of each module you gonna find README.md file with simple instructions and hints.
Although you'll need to do similar steps in order to migrate each module one-by-one...
Basically for each module you should correctly define `module-info.java` under `src/main/java`
and implement `compile.sh` and `package.sh` scripts:
- `compile.sh` script should compile your sources as Java 9 module into `mods/<module.name>` folder
- `package.sh` script should then package your module binaries as modular JAR and place it into `mlib` folder at the root of the project

> [NOTE]: You have all necessary 3rd party libraries in `libs` directory at the root of the project.
Couple of other libraries are placed into `classpath` folder which shouldn't be used on module path. See README.md file why.

Please refer to following modules dependencies graph in order to better understand migration approach - http://junit.org/junit5/docs/current/user-guide/#dependency-diagram

##FINAL STEP

Once all modules have been successfully migrated you should have all your module JARs in `mlib` folder ready to be used.
You can use `rebuildAll.sh` script to rebuild all your modules if necessary.
Now you should be keen to run some TESTs using modularized JUnit 5 platform!!!

You can add your own custom module with JUnit 5 tests or simply add your tests to `platform-tests/src/test/java/org/mytests` package *as I did*
and try to implement `runTests.sh` script to run at least one of your tests
using either *Intellij IDEA JUnit runner* or *Console runner* from `junit-platform-console` module.

Try to correctly compose your module path and classpath in place of `/*TODO:*/`
