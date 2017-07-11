module junit.jupiter.api {
    requires junit.platform.commons;

    requires org.opentest4j;

    exports org.junit.jupiter.api;
    exports org.junit.jupiter.api.extension;
    exports org.junit.jupiter.api.function;

    uses org.junit.jupiter.api.extension.Extension;
}