FROM fluentd:v1.9.1-1.0

USER root

RUN apk add ruby-dev make gcc libc-dev libxml2-dev ruby-json ruby-bigdecimal
RUN gem install fluentd-ui

USER fluent
