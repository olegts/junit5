module junit.platform.engine {
    requires junit.platform.commons;

    requires org.opentest4j;

    exports org.junit.platform.engine;
    exports org.junit.platform.engine.discovery;
    exports org.junit.platform.engine.reporting;
    exports org.junit.platform.engine.support.descriptor;
    exports org.junit.platform.engine.support.filter;
    exports org.junit.platform.engine.support.hierarchical;
}