FROM ruby:2.5.1-alpine3.7

# Deps of the lesson runner
RUN gem install rainbow:3.0.0 rouge:3.1.1

# Deps of the unit
COPY Gemfile ./
RUN bundle install

WORKDIR /unit

# Must preserve directory structure!
COPY ./ ./
