module junit.platform.launcher {
    requires junit.platform.engine;
    requires junit.platform.commons;

    requires java.logging;

    exports org.junit.platform.launcher;
    exports org.junit.platform.launcher.core;
    exports org.junit.platform.launcher.listeners;
}