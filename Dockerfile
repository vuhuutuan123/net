FROM ruby:3.0.3

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /noteapp
WORKDIR /noteapp

ADD Gemfile /noteapp/Gemfile
ADD Gemfile.lock /noteapp/Gemfile.lock

RUN bundle install

ADD . /noteapp

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Configure the main process to run when running the image
CMD ["rails", "server", "-b", "0.0.0.0"]