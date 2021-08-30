FROM centos:7
MAINTAINER Devopscube
RUN yum -y update && \
    yum -y install httpd && \
    yum clean all
COPY ./script.sh /
RUN chmod +x /script.sh
ENTRYPOINT ["/script.sh"]
