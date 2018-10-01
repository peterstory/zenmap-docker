FROM centos:7.5.1804
MAINTAINER pstory@andrew.cmu.edu

RUN rpm -vhU https://nmap.org/dist/nmap-7.70-1.x86_64.rpm
RUN yum install -y pygtk2 && yum clean all
RUN rpm -vhU https://nmap.org/dist/zenmap-7.70-1.noarch.rpm
RUN rpm -vhU https://nmap.org/dist/ncat-7.70-1.x86_64.rpm
RUN rpm -vhU https://nmap.org/dist/nping-0.7.70-1.x86_64.rpm

CMD ["zenmap"]
