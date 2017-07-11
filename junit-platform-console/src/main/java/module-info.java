module junit.platform.console {
    requires junit.platform.launcher;
    requires junit.platform.engine;
    requires junit.platform.commons;

    requires java.xml;

    requires jopt.simple;

    exports org.junit.platform.console;
    exports org.junit.platform.console.options;
    exports org.junit.platform.console.tasks;
}