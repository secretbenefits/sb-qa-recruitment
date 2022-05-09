#!/bin/sh

bundle exec rake db:migrate

# In case migrations fail, setup database
if [ $? != 0 ]; then
  echo
  echo "== Failed to migrate. Running setup first."
  echo
  bundle exec rake db:create db:migrate

fi

exec "$@"
