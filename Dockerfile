FROM centos
MAINTAINER samuel
RUN yum -y update
RUN yum -y install httpd
RUN systemctl enable httpd
EXPOSE 80

ADD httpd.sh /httpd.sh
RUN chmod -v +x /httpd.sh
RUN yum clean all && rm -rf /tmp/yum*

ADD httpd.sh /httpd.sh
RUN chmod -v +x /httpd.sh
CMD ["/httpd.sh"]

