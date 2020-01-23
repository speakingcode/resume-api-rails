FROM ruby:2.7.0-alpine3.11

RUN apk add --update build-base postgresql-dev tzdata
RUN gem install bundler

WORKDIR /resume-api-rails
ADD Gemfile Gemfile.lock /resume-api-rails/
RUN bundle install

ADD app config.ru public test bin db lib Rakefile config README.md /resume-api-rails/
CMD ["puma"]
