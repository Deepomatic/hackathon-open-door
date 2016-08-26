#!/bin/sh
### BEGIN INIT INFO
# Provides:          uwsgi
# Required-Start:    $local_fs $network $named $time $syslog
# Required-Stop:     $local_fs $network $named $time $syslog
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Description:       uwsgi server
### END INIT INFO

DAEMON=/usr/local/bin/uwsgi
DAEMON_ARGS="--emperor /etc/uwsgi/vassals"
DAEMONUSER=root

PIDNAME=uwsgi.pid
LOGFILE=/var/log/uwsgi.log

start() {
  echo 'Starting service' >&2
  start-stop-daemon --background --start --quiet --pidfile /var/run/$PIDNAME --make-pidfile --chuid $DAEMONUSER --startas /bin/bash -- -c "exec $DAEMON $DAEMON_ARGS > $LOGFILE 2>&1"
  echo 'Service started' >&2
}

stop() {
  echo 'Stopping service' >&2
  start-stop-daemon --stop --quiet --pidfile /var/run/$PIDNAME --retry 300
  echo 'Service stopped' >&2
}

case "$1" in
  start)
    start
    ;;
  stop)
    stop
    ;;
  restart)
    stop
    start
    ;;
  *)
    echo "Usage: $0 {start|stop|restart}"
esac
