FROM ruby:2.7.0-alpine3.11

# dependencies for building rails, postgres bindings, etc
RUN apk add --update build-base postgresql-dev tzdata

# dependency for wicked_pdf to generate pdf files
RUN apk add wkhtmltopdf

RUN gem install bundler

WORKDIR /resume-api-rails
ADD Gemfile Gemfile.lock /resume-api-rails/
RUN bundle install

ADD app config.ru public test bin db lib Rakefile config README.md /resume-api-rails/
CMD ["puma"]
