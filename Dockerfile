FROM alpine

RUN apk update && apk add --update firefox

ENTRYPOINT ["firefox"]
