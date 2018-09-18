#FROM registry.access.redhat.com/redhat-openjdk-18/openjdk18-openshift
FROM java-s2i-gc:1.0
ADD target/docker-spring-boot.jar docker-spring-boot.jar
EXPOSE 8085
ENTRYPOINT ["java", "-jar", "docker-spring-boot.jar"]
