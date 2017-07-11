module junit.jupiter.params {
    requires junit.jupiter.api;
    requires junit.platform.commons;

    requires java.logging;
    requires java.sql;

    requires univocity.parsers;

    exports org.junit.jupiter.params;
    exports org.junit.jupiter.params.converter;
    exports org.junit.jupiter.params.provider;
    exports org.junit.jupiter.params.support;
}