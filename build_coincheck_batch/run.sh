#!/bin/bash
cd /usr/local/bin
./coincheck_batch &

cat <<EOF >>~/.bashrc
trap 'pkill -TERM coincheck_batch; sleep 3;exit 0' TERM
EOF
exec /bin/bash
