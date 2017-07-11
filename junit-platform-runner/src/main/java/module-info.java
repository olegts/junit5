module junit.platform.runner {
    requires junit.platform.launcher;
    requires junit.platform.engine;
    requires junit.platform.commons;
    requires junit.platform.suite.api;

    requires junit;

    exports org.junit.platform.runner;
}