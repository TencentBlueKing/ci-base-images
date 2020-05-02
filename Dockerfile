FROM centos:7
RUN yum install -y java-1.8.0-openjdk wget
RUN wget https://repo1.maven.org/maven2/org/bouncycastle/bcprov-jdk16/1.46/bcprov-jdk16-1.46.jar -O /etc/alternatives/jre/lib/ext/bcprov-jdk16-1.46.jar
RUN ln -sf /etc/alternatives/jre /usr/local/jre
