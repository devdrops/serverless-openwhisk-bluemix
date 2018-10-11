FROM node:latest

ARG VCS_REF
ARG BUILD_DATE

LABEL maintainer="davi.marcondes.moreira@gmail.com" \
      org.label-schema.name="devdrops/sls-ow-bx" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.vcs-url="https://github.com/devdrops/serverless-openwhisk-bluemix" \
      org.label-schema.schema-version="1.0"

RUN npm install -g serverless serverless-openwhisk && \
    curl -fsSL https://clis.ng.bluemix.net/install/linux | sh && \
    bx plugin install cloud-functions -r Bluemix

