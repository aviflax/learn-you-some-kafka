FROM 'ruby:2.5.0-alpine3.7'

# Deps of the lesson runner
RUN gem install rainbow:3.0.0 rouge:3.1.0

# Deps of the lesson itself
COPY Gemfile ./
RUN bundle install

WORKDIR lesson
COPY *.rb ./
ENTRYPOINT [ "ruby", "lesson.rb" ]
