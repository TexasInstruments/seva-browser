FROM alpine

RUN apk update && apk add --update firefox font-noto-all

ENTRYPOINT ["firefox"]
