FROM openjdk:8-jre-slim
RUN apt update && apt upgrade && apt install -y curl wget
RUN wget https://repo1.maven.org/maven2/org/bouncycastle/bcprov-jdk16/1.46/bcprov-jdk16-1.46.jar -O /usr/local/openjdk-8/lib/ext/bcprov-jdk16-1.46.jar
RUN ln -sf /etc/alternatives/jre /usr/local/jre
