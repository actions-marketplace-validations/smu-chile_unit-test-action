FROM node:16.14-alpine3.15
WORKDIR /app

ENV CONSUL_TEMPLATE_VERSION="0.27.2"
ENV SETUP_NODE_VERSION="3.0.0"

ADD https://releases.hashicorp.com/consul-template/${CONSUL_TEMPLATE_VERSION}/consul-template_${CONSUL_TEMPLATE_VERSION}_linux_amd64.zip /tmp
RUN unzip -q /tmp/consul-template_${CONSUL_TEMPLATE_VERSION}_linux_amd64.zip -d /bin/

COPY . .

# ADD https://github.com/actions/setup-node/archive/refs/tags/v3.0.0.tar.gz /tmp
# RUN tar -xf /tmp/v${SETUP_NODE_VERSION}.tar.gz -C /tmp && cp -rf /tmp/setup-node-${SETUP_NODE_VERSION}/* .

RUN npm install -g
RUN npm install --save-dev jest --silent -g
RUN npm test


RUN rm -rf /tmp/*.zip /tmp/*.tar.gz  
# /tmp/setup-node-${SETUP_NODE_VERSION}
