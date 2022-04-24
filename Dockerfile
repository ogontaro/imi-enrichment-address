FROM node:17-alpine
ARG VERSION=2.0.0
ENV APP_HOME /app
WORKDIR ${APP_HOME}

RUN npm install https://info.gbiz.go.jp/tools/imi_tools/resource/imi-enrichment-address/imi-enrichment-address-${VERSION}.tgz

EXPOSE 8080

CMD node node_modules/imi-enrichment-address/bin/server.js 8080
