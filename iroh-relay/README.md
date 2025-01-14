# iroh-relay

## nginx reverse proxy

```
# Paths as defined in: https://github.com/n0-computer/iroh/blob/v0.26.0/iroh-net/src/relay/http.rs for v0.26.0

location /relay {
        proxy_pass http://127.0.0.1:3340;
        proxy_http_version 1.1;

        # Upgrade header is normally set to "iroh derp http" or "websocket".
        proxy_set_header Upgrade $http_upgrade;
        proxy_set_header Connection "upgrade";
}

location /relay/probe {
        proxy_pass http://127.0.0.1:3340;
        proxy_http_version 1.1;
}

location /generate_204 {
        proxy_pass http://127.0.0.1:3340;
        proxy_http_version 1.1;
}
```
