# Modularize junit-jupiter-migrationsupport module

In this excercise you need to turn JUnit 5 `junit-jupiter-migrationsupport` module into Java 9 `junit.jupiter.migrationsupport` module.

All you have to do is:
1. Add *correct* `module-info.java` descriptor to `src/main/java` content root folder
based on information retrieved by `inspect.sh` script and module dependencies graph described here - http://junit.org/junit5/docs/current/user-guide/#dependency-diagram
2. Implement `compile.sh` scripts in order to compile module sources into `mods/junit.jupiter.migrationsupport` folder
3. Implement `package.sh` script in order to package your module binaries as modular JAR and place it into `mlib` folder at the root of the project
