FROM node:15-slim

WORKDIR /usr/src/app

# Install dependencies
RUN apt-get update \
      && apt-get install -y git python build-essential

# Download HOFFNUNG 3000 repository
RUN git clone https://github.com/adzialocha/hoffnung3000.git /usr/src/app

# Install and build project
RUN npm install

# Remove unneeded dependencies
RUN apt-get purge -y --auto-remove build-essential

# Copy runtime scripts into root
COPY *.sh ./

EXPOSE 3000

ENTRYPOINT ["./entrypoint.sh"]
