#!/bin/bash
set -e

LC_ALL=C DEBIAN_FRONTEND=noninteractive apt-get --force-yes -y install python2.7 python-pip

pip install virtualenv
su -lc /bin/bash $VAGRANT_USER <<EOF
set -e
virtualenv --prompt="(RF)" \$HOME/.local_python
EOF

cat > /etc/profile.d/virtualenv.sh <<EOF
#!/bin/bash

if [[ -f \$HOME/.local_python/bin/activate ]]; then
    source \$HOME/.local_python/bin/activate
fi
EOF
