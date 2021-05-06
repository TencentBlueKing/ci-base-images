FROM openjdk:8-jre-slim
RUN apt update -y && apt upgrade -y && apt autoremove -y
RUN apt install -y curl wget
RUN wget -q https://repo1.maven.org/maven2/org/bouncycastle/bcprov-jdk15to18/1.68/bcprov-jdk15to18-1.68.jar -O $JAVA_HOME/lib/ext/bcprov-jdk15to18-1.68.jar
RUN ln -sf $JAVA_HOME /usr/local/jre
