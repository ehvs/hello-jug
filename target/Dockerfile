FROM registry.access.redhat.com/redhat-openjdk-18/openjdk18-openshift
ADD target/docker-spring-boot.jar docker-spring-boot.jar
EXPORT 8085
ENTRYPOINT ["java", "-jar", "docker-spring-boot.jar"]