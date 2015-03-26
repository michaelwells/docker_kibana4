FROM centos:centos7
MAINTAINER Mike Wells

RUN yum -y install tar && yum clean all

RUN useradd kibana
RUN chown kibana /opt
USER kibana

COPY entrypoint.sh /opt/entrypoint.sh
RUN cd /opt/ && curl -O https://download.elasticsearch.org/kibana/kibana/kibana-4.0.1-linux-x64.tar.gz && tar xvf kibana-4.0.1-linux-x64.tar.gz
RUN ln -s /opt/kibana-4.0.1-linux-x64 /opt/kibana

EXPOSE 5601
ENTRYPOINT ["/opt/entrypoint.sh"]
