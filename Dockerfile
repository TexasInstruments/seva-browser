FROM alpine

RUN apk update && apk add --update firefox font-noto-all

RUN mkdir -p /root/.mozilla/firefox/default
COPY ./prefs.js /root/.mozilla/firefox/default/prefs.js
COPY ./enterprise_policy/* /usr/lib/firefox/

ENTRYPOINT ["firefox", "--no-remote", "--profile", "/root/.mozilla/firefox/default/", "--kiosk"]
