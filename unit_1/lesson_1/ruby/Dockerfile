FROM 'ruby:2.5.0-alpine3.7'
RUN gem install rainbow:3.0.0 rouge:3.1.0
WORKDIR lesson
COPY *.rb ./
ENTRYPOINT [ "ruby", "lesson.rb" ]
