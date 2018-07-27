FROM 'jruby:9.2.0.0-jre-alpine'

# Deps of the lesson runner
RUN gem install rainbow:3.0.0 rouge:3.1.0

# Gem deps of the lesson itself
COPY Gemfile ./
RUN bundle install

# JAR deps of the lesson itself
COPY Jarfile ./
RUN jbundle install

WORKDIR lesson
COPY * ./
ENTRYPOINT [ "jruby", "lesson.rb" ]
