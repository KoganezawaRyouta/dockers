#!/bin/bash
cd /app/bin
./$1 &

cat <<EOF >>~/.bashrc
trap 'pkill -TERM $1; sleep 3;exit 0' TERM
EOF
exec /bin/bash
