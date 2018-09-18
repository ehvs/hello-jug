FROM registry.access.redhat.com/redhat-openjdk-17/openjdk18-openshift:latest
USER root
COPY java-default-options /opt/run-java/java-default-options
RUN chmod +x /opt/run-java/java-default-options
USER 185
