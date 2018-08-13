FROM jruby:9.2.0.0-jre-alpine

# Deps of the lesson runner
RUN gem install rainbow:3.0.0 rouge:3.1.1

# Gem deps of the unit
COPY Gemfile ./
RUN bundle install

# JAR deps of the unit
COPY Jarfile ./
RUN jbundle install

WORKDIR /unit

# Must preserve directory structure!
COPY ./ ./
