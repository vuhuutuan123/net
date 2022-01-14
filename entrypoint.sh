#!/bin/bash
set -e
# install gem
bundle install

# Check database exist or not, if db not exist, it will create db and migrate
bundle exec rails db:prepare

# Remove a potentially pre-existing server.pid for Rails.
rm -f /noteapp/tmp/pids/server.pid

# Configure the main process to run when running the image
bundle exec rails server -b '0.0.0.0'

# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"