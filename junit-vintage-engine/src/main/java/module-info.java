module junit.vintage.engine {
    requires junit.platform.engine;
    requires junit.platform.commons;

    requires java.logging;

    requires junit;
    requires org.opentest4j;

    exports org.junit.vintage.engine;
    exports org.junit.vintage.engine.descriptor;
    exports org.junit.vintage.engine.discovery;
    exports org.junit.vintage.engine.execution;
}