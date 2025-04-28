FROM ubuntu:25.04 AS snyk-install

RUN curl -sSL -o /usr/local/bin/snyk https://downloads.snyk.io/cli/stable/snyk-linux \
    && chmod 755 /usr/local/bin/snyk

FROM screwdrivercd/launcher:v6.0.221

COPY --from=snyk-install /usr/local/bin/snyk /opt/sd/snyk/bin/snyk

RUN /hab/bin/hab pkg binlink core/curl \
    && /hab/bin/hab pkg binlink core/unzip \
    && apk --update add tar \
    && echo "- /opt/sd/snyk:" \
    && ls -la /opt/sd/snyk
