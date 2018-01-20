FROM ruby:2.5-stretch

COPY . /app/
WORKDIR /app/

RUN bundle install

ARG APP
ENV APP $APP
CMD ruby /app/$APP.rb
