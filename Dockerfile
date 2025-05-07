# Datei: Dockerfile
FROM mosazhaw/jenkins-agent:jdk21-1.3

USER root
RUN apt-get update && apt-get install -y docker.io
USER jenkins
