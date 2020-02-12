FROM ruby:2.7.0-slim

EXPOSE 9292

RUN gem install -V fluentd-ui
RUN fluentd-ui setup

CMD ["fluentd-ui","start"]
