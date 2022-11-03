FROM alpine

RUN apk update && apk add --update firefox font-noto-all

RUN mkdir -p ~/.mozilla/firefox/default
COPY ./prefs.js ~/.mozilla/firefox/default/
COPY ./enterprise_policy/* /usr/lib/firefox/

ENTRYPOINT ["firefox", "--no-remote", "--profile", "~/.mozilla/firefox/default/"]
