FROM debian:stable-slim

LABEL "maintainer"="Pierre Grimaud <hello@p.ier.re>"
LABEL "repository"="https://github.com/pgrimaud/actions"
LABEL "homepage"="https://github.com/pgrimaud/action-shopify"

LABEL "com.github.actions.name"="Shopify Theme"
LABEL "com.github.actions.description"="Deploy Shopify theme"
LABEL "com.github.actions.icon"="shopping-bag"
LABEL "com.github.actions.color"="green"

RUN apt-get update && \
    apt-get install -y curl python && \
    rm -rf /var/lib/apt/lists/*

RUN curl -s https://shopify.github.io/themekit/scripts/install.py | python

COPY "entrypoint.sh" "/entrypoint.sh"
RUN chmod +x /entrypoint.sh

RUN ls -la

ENTRYPOINT ["/entrypoint.sh"]
