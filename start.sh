#!/usr/bin/dumb-init /bin/sh

./bootstrap.sh && ./socat.sh && cd /opt/linbpq && ./linbpq
