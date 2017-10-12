#!/bin/bash

WORK_DIR="/tmp/www"
LISTEN_PORT=8080

/bin/firewall-cmd --add-port=${LISTEN_PORT}/tcp --permanent
/bin/firewall-cmd --reload

mkdir "$WORK_DIR"
echo "File served by $(hostname)" > "$WORK_DIR/index.txt"

cd "$WORK_DIR"
python -m SimpleHTTPServer $LISTEN_PORT &
disown
exit 0
