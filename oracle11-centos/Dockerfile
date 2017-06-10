FROM centos:7
MAINTAINER Alexander Tarlinder <a@tarlinder.net>

ENV _SCRATCH=/tmp/scratch PASSWORD=admin123

# For listener.ora to be correctly set up, this name must match the value of the -h flag passed to 'docker run'. 
ENV HOSTNAME=oracle

COPY oracle-xe-11.2.0-1.0.x86_64.rpm.zip ${_SCRATCH}/db/

RUN yum update -y -q && \
    yum install -y libaio bc initscripts net-tools unzip && \
    yum clean all && \
    unzip -qq ${_SCRATCH}/db/oracle-xe-11.2.0-1.0.x86_64.rpm.zip -d ${_SCRATCH}/db && \
    yum localinstall -y ${_SCRATCH}/db/Disk1/oracle-xe-11.2.0-1.0.x86_64.rpm && \
    sed -i "s/ORACLE_PASSWORD=<value required>/ORACLE_PASSWORD=${PASSWORD}/g" ${_SCRATCH}/db/Disk1/response/xe.rsp && \
    sed -i "s/ORACLE_CONFIRM_PASSWORD=<value required>/ORACLE_CONFIRM_PASSWORD=${PASSWORD}/g" ${_SCRATCH}/db/Disk1/response/xe.rsp && \
    /etc/init.d/oracle-xe configure responseFile=${_SCRATCH}/db/Disk1/response/xe.rsp && \
    rm -rf ${_SCRATCH}  

ENV ORACLE_HOME=/u01/app/oracle/product/11.2.0/xe

EXPOSE 1521

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"] 
