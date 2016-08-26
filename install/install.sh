#!/bin/bash

set -e

cd $(dirname $0)

# Install uWSGI
mkdir -p /etc/uwsgi/vassals
sed "s:{PWD}:${PWD}:g" uwsgi.ini > /etc/uwsgi/vassals/open_door.ini
cp uwsgi.init.d /etc/init.d/uwsgi
update-rc.d uwsgi defaults
sudo service uwsgi start

# Install nginx
sed "s:{PWD}:${PWD}:g" nginx.conf > /etc/nginx/sites-enabled/open_door.conf
set +e
sudo service nginx start
set -e
sudo service nginx reload

# Install binary
sudo cp ../src/open-door /usr/local/bin/