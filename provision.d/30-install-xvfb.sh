#!/bin/bash
set -e

echo 'Install Xvfb ...'

DISPLAY=:8964

LC_ALL=C DEBIAN_FRONTEND=noninteractive apt-get --force-yes -y install xvfb

[[ -e /etc/init.d/xvfb ]] && /etc/init.d/xvfb stop
cat > /etc/init.d/xvfb <<EOF
#!/bin/bash

### BEGIN INIT INFO
# Provides:          xvfb
# Required-Start:    \$remote_fs
# Required-Stop:     \$remote_fs
# Default-Start:     2 3 4 5
# Default-Stop:
### END INIT INFO

XVFB=/usr/bin/Xvfb
XVFBARGS="$DISPLAY -ac"
PIDFILE=/var/run/xvfb${DISPLAY}.pid

case "\$1" in
  start)
    echo -n "Starting virtual X frame buffer: Xvfb $DISPLAY"
    /sbin/start-stop-daemon --start --quiet --pidfile \$PIDFILE --make-pidfile --background --exec \$XVFB -- \$XVFBARGS
    echo "."
    ;;
  stop)
    echo -n "Stopping virtual X frame buffer: Xvfb $DISPLAY"
    /sbin/start-stop-daemon --stop --quiet --pidfile \$PIDFILE
    echo "."
    ;;
  restart)
    \$0 stop
    \$0 start
    ;;
  *)
    echo "Usage: /etc/init.d/xvfb {start|stop|restart}"
    exit 1
esac

exit 0
EOF

chmod +x /etc/init.d/xvfb
update-rc.d xvfb start 99 2 3 4 5 .
service xvfb start

cat > /etc/profile.d/xvfb.sh <<EOF
[ -z "\$DISPLAY" ] && export DISPLAY=$DISPLAY
EOF
