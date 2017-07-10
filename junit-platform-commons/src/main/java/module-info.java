module junit.platform.commons {
    requires java.compiler;     
    requires java.logging;

    exports org.junit.platform.commons;
    exports org.junit.platform.commons.annotation;
    exports org.junit.platform.commons.meta;
    exports org.junit.platform.commons.support;
    exports org.junit.platform.commons.util;
}