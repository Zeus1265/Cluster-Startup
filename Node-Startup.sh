#!/bin/bash
### BEGIN INIT INFO
# Provides:          Node-Startup
# Required-Start:    $local_fs $remote_fs $network $named $time $syslog
# Required-Stop:     $local_fs $remote_fs $network $named $time $syslog
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: Writes hostname to /home/Node-Startup.log
# Description:       Writes hostname to /home/Node-Startup.log
### END INIT INFO

case "$1" in
  start)
    echo "Sending startup signal to master"
    hostname > /home/Node-Startup.log
    ;;
  stop)
    echo "Nothing to do"
    ;;
  *)
    echo "Usage is: /etc/init.d/Node-Startup.sh {start|stop}"
    ;;
esac

exit 0
