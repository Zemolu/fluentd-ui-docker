FROM fluentd:v1.9.1-1.0

USER root

RUN apk add ruby-dev make gcc libc-dev libxml2-dev ruby-json ruby-bigdecimal && \
    gem install fluentd-ui && \
    fluent-gem install fluent-plugin-elasticsearch fluent-plugin-ua-parser && \
    apk del ruby-dev make gcc libc-dev libxml2-dev

CMD [ "fluentd-ui", "start" ]
