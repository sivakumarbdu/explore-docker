#!/bin/bash
rm tmp/pids/server.pid
bundle exec sidekiq -d -L log/sidekiq.log -C config/sidekiq.yml -e development
bundle exec rails s -b 0.0.0.0

