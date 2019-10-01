FROM node:11

USER root

ADD https://github.com/krallin/tini/releases/download/v0.18.0/tini /tini

RUN chmod +x /tini
RUN mkdir /home/node/.npm-global ; \
    chown -R node:node /home/node/

RUN mkdir /home/node/.ssb
COPY config /home/node/.ssb/config

ENV PATH=/home/node/.npm-global/bin:$PATH
ENV NPM_CONFIG_PREFIX=/home/node/.npm-global

USER node

RUN npm install -g ssb-server@14.1.7

EXPOSE 3002

HEALTHCHECK --interval=30s --timeout=30s --start-period=10s --retries=10 \
  CMD ssb-server whoami || exit 1

ENV HEALING_ACTION RESTART

ENTRYPOINT [ "/tini", "--", "ssb-server" ]
CMD [ "start" ]
