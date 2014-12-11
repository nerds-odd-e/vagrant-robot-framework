#!/bin/bash
set -e

su -lc /bin/bash $VAGRANT_USER <<EOF
pip install robotframework==2.8.6
pip install robotframework-selenium2library==1.6.0
EOF

aptitude -y install firefox
