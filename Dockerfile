FROM ruby:2.7.0-alpine3.11

# dependencies for building rails, postgres bindings, etc
RUN apk add --update build-base postgresql-dev tzdata

# dependency for wicked_pdf to generate pdf files
RUN apk add \
  wkhtmltopdf \
  fontconfig \
  freetype \
  ttf-dejavu \
  ttf-droid \
  ttf-freefont \
  ttf-liberation \
  ttf-ubuntu-font-family

RUN gem install bundler

WORKDIR /resume-api-rails
ADD Gemfile Gemfile.lock /resume-api-rails/
RUN bundle install

COPY bin ./bin
COPY lib ./lib
COPY config.ru .
COPY Rakefile .
COPY config ./config
COPY public ./public
COPY db ./db
#COPY spec ./spec
COPY app ./app
CMD ["puma"]
