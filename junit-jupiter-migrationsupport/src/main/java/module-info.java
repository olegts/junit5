module junit.jupiter.migrationsupport {
    requires junit.jupiter.api;
    requires junit.platform.commons;

    requires junit;

    exports org.junit.jupiter.migrationsupport.rules;
    exports org.junit.jupiter.migrationsupport.rules.adapter;
    exports org.junit.jupiter.migrationsupport.rules.member;
}