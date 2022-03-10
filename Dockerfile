# syntax=docker/dockerfile:1
 FROM v2fly/v2fly-core
 COPY config.json /etc/v2ray/config.json
 RUN set -ex \
 	 	 && apk add --no-cache caddy wget \
		 && mkdir -p /usr/share/caddy /etc/caddy/ \
		 && echo "caddy page"  > /usr/share/caddy/index.html
 COPY Caddyfile /etc/caddy/Caddyfile
 COPY service.sh /service.sh
 RUN chmod u+x /service.sh
 CMD /service.sh
