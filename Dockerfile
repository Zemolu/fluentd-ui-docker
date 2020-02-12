FROM ruby:2.7.0-slim

EXPOSE 9292

RUN buildDeps="sudo make gcc g++ libc-dev ruby-dev build-essential libssl-dev libxml2-dev libxslt1-dev zlib1g-dev"
RUN gem install -V fluentd-ui
RUN fluentd-ui setup

CMD ["fluentd-ui","start"]
