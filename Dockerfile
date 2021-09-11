FROM node:16-alpine3.14 as builder

RUN apk add --no-cache git
RUN mkdir /src
WORKDIR /src
RUN git clone https://github.com/lkwg82/daikin-controller-cloud.git . \
    && git checkout example-data-collector

RUN ls -asl

RUN npm install

FROM node:16-alpine3.14

COPY --from=builder /src /src


COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

WORKDIR /src/example

ENTRYPOINT [ "/entrypoint.sh" ]
# CMD  [ "node", "data_collector.js"]