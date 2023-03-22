FROM debian

RUN apt-get update && apt-get install -y --no-install-recommends \
	firefox-esr \
	fonts-noto \
	&& rm -rf /var/lib/apt/lists/*

RUN mkdir -p /root/.mozilla/firefox/default
COPY ./prefs.js /root/.mozilla/firefox/default/prefs.js
COPY ./enterprise_policy/* /usr/lib/firefox/

ENTRYPOINT ["firefox", "--no-remote", "--profile", "/root/.mozilla/firefox/default/", "--kiosk"]
