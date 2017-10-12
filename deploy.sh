#!/bin/bash

WORK_DIR="/tmp/www"

mkdir "$WORK_DIR"
echo "File served by $(hostname)" > "$WORK_DIR/index.txt"

cd "$WORK_DIR"
python -m SimpleHTTPServer 8080 &
disown
exit 0
