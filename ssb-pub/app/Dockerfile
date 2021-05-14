FROM node:12

USER root

ADD https://github.com/krallin/tini/releases/download/v0.18.0/tini /tini

RUN chmod +x /tini
RUN mkdir /home/node/.npm-global ; \
    chown -R node:node /home/node/

ENV PATH=/home/node/.npm-global/bin:$PATH
ENV NPM_CONFIG_PREFIX=/home/node/.npm-global

USER node

RUN mkdir /home/node/.ssb

RUN echo "{ \"connections\": { \"incoming\": { \"net\": [ { \"scope\": \"public\", \"host\": \"0.0.0.0\", \"external\": \"pub.liebechaos.org\", \"transform\": \"shs\", \"port\": 8008 } ] }, \"outgoing\": { \"net\": [ { \"transform\": \"shs\" } ] } } }" > /home/node/.ssb/config

RUN npm install -g ssb-server@16.0.1

HEALTHCHECK --interval=30s --timeout=30s --start-period=10s --retries=10 \
  CMD ssb-server whoami || exit 1

ENV HEALING_ACTION RESTART

ENTRYPOINT [ "/tini", "--", "ssb-server" ]
CMD [ "start" ]
