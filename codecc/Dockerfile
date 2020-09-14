FROM centos:7
# UnInstall subversion
RUN yum remove -y subversion*
# Add svn repo
RUN echo [Subversion] >> /etc/yum.repos.d/subversion.repo
RUN echo name=Wandisco SVN Repo >> /etc/yum.repos.d/subversion.repo
RUN echo baseurl=http://opensource.wandisco.com/centos/\$releasever/svn-1.9/RPMS/\$basearch/ >> /etc/yum.repos.d/subversion.repo
RUN echo enabled=1 >> /etc/yum.repos.d/subversion.repo
RUN echo gpgcheck=0 >> /etc/yum.repos.d/subversion.repo
# Install tools
RUN yum update -y && \
    yum install -y kde-l10n-Chinese \
    yum reinstall -y glibc-common && \
    yum install -y telnet net-tools && \
    yum install -y python3 && \
    yum install -y java-1.8.0-openjdk && \
    yum install -y git && \
    yum install -y subversion && \
    yum install -y perl && \
    yum install -y epel-release && \
    yum install -y python-pip && \
    yum install -y python3-pip && \
    yum clean all && \
    rm -rf /tmp/* rm -rf /var/cache/yum/* && \
    localedef -c -f UTF-8 -i zh_CN zh_CN.UTF-8 && \
    ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
ENV LANG=zh_CN.UTF-8 \
    LANGUAGE=zh_CN:zh \
    LC_ALL=zh_CN.UTF-8