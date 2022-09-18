# syntax=docker/dockerfile:1
FROM ruby:2.5

RUN apt-get update && apt-get install -y nodejs sqlite3

WORKDIR /myapp
COPY . .
RUN bundle install

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]