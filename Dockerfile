FROM node:16.14-alpine3.15
WORKDIR /project

ENV CONSUL_VERSION="0.28.0"

ADD https://releases.hashicorp.com/consul-template/0.28.0/consul-template_${CONSUL_VERSION}_linux_amd64.zip /tmp
RUN unzip /tmp/consul-template_${CONSUL_VERSION}_linux_amd64.zip -q -d /bin/

COPY app .
RUN rm -rf /tmp/