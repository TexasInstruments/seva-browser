FROM alpine

RUN apk update && apk add --update firefox font-noto-all

RUN mkdir -p ~/.mozilla/firefox/default
ADD prefs.js ~/.mozilla/firefox/default/

ENTRYPOINT ["firefox", "--profile", "default"]
