FROM ruby:2.6.2-alpine3.9
WORKDIR /app
COPY ./Gemfile ./Gemfile.lock ./
RUN bundle install
COPY . .
ENTRYPOINT ["/usr/local/bin/ruby", "hello_world.rb"]
CMD []
