module junit.jupiter.engine {
    requires junit.jupiter.api;
    requires junit.platform.engine;
    requires junit.platform.commons;

    requires java.logging;

    requires org.opentest4j;

    exports org.junit.jupiter.engine;
    exports org.junit.jupiter.engine.descriptor;
    exports org.junit.jupiter.engine.discovery;
    exports org.junit.jupiter.engine.discovery.predicates;
    exports org.junit.jupiter.engine.execution;
    exports org.junit.jupiter.engine.extension;

    provides org.junit.platform.engine.TestEngine with org.junit.jupiter.engine.JupiterTestEngine;
}