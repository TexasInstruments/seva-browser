FROM debian:stable-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
	firefox-esr:102.9.0 \
	fonts-noto \
	&& rm -rf /var/lib/apt/lists/*

RUN mkdir -p /root/.mozilla/firefox/default
COPY ./prefs.js /root/.mozilla/firefox/default/prefs.js
COPY ./enterprise_policy/* /usr/lib/firefox/

RUN useradd -m user
RUN mkdir -p /home/user/.mozilla/firefox/default
COPY ./prefs.js /home/user/.mozilla/firefox/default/prefs.js
RUN chown user:user -R /home/user

copy entrypoint.sh /
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
