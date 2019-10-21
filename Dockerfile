FROM node:12.4

ARG VERSION=latest

RUN npm config set registry http://registry.npmjs.org/
RUN npm install -g ibm-openapi-validator@${VERSION}

ENTRYPOINT ["lint-openapi"]
