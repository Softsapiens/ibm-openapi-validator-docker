FROM node:12.4

ARG VERSION=v0.15.1

RUN npm config set registry http://registry.npmjs.org/
RUN npm install -g ibm-openapi-validator@${VERSION}

ENTRYPOINT ["lint-openapi"]
