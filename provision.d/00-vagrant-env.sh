#!/bin/bash

VAGRANT_PROJECT_NAME="Robot Framework"
VAGRANT_USER=vagrant

cat > /etc/motd <<EOF
       $VAGRANT_PROJECT_NAME
            ^__^
            (oo)\\_______
            (__)\\       )\\/\\
                ||----w |
                ||     ||

EOF

cat > /etc/profile.d/00-default_vagrant.sh <<EOF
export VAGRANT_USER=$VAGRANT_USER
EOF
