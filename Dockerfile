FROM node:16.14-alpine3.15
WORKDIR /app

ENV CONSUL_TEMPLATE_VERSION="0.27.2"

ADD https://releases.hashicorp.com/consul-template/${CONSUL_TEMPLATE_VERSION}/consul-template_${CONSUL_TEMPLATE_VERSION}_linux_amd64.zip /tmp
RUN unzip -q /tmp/consul-template_${CONSUL_TEMPLATE_VERSION}_linux_amd64.zip -d /bin/

RUN rm -rf /tmp/*.zip /tmp/*.tar.gz  

