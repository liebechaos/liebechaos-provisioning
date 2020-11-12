FROM alpine:3.12.1

# Install dependencies and coturn
RUN apk update \
      && apk add --no-cache coturn openssl curl

# Generate keypair for coturn TLS/DTLS
RUN openssl req -newkey rsa:2048 -new -nodes -x509 -keyout key.pem -out cert.pem -subj "/C=DE/ST=Berlin/L=Berlin/O=Global Security/OU=IT Department/CN=liebechaos.org"

# Prepare scripts
COPY external-ip.sh .
COPY run.sh .
RUN chmod +x run.sh
RUN chmod +x external-ip.sh

# Start command
CMD ["./run.sh"]
