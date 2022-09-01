FROM ruby:2.7.4

WORKDIR /app
COPY . /app
RUN bundle install

EXPOSE 8080

CMD ["bundle", "exec", "rackup", "--host", "0.0.0.0", "-p", "8080"]
