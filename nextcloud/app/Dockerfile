FROM nextcloud:20.0.1-apache

RUN apt-get update && apt-get install -y \
    supervisor \
  && rm -rf /var/lib/apt/lists/* \
  && mkdir /var/log/supervisord /var/run/supervisord

COPY supervisord.conf /etc/supervisor/supervisord.conf

COPY redis.config.php /usr/src/nextcloud/config/redis.config.php
COPY proxy.config.php /usr/src/nextcloud/config/proxy.config.php

ENV NEXTCLOUD_UPDATE=1

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/supervisord.conf"]
