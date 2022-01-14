#!/bin/sh
set -e

# Check database exist or not, if db not exist, it will create db and migrate
bundle exec rails db:prepare

# Remove a potentially pre-existing server.pid for Rails
rm -f /net/tmp/pids/server.pid

# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"