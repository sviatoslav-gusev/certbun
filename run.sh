#!/bin/sh
test -f /opt/certbun/certbun.py || exit 1
python3 -c 'import random,time; time.sleep(random.randint(0,600))'

LOG=/var/log/certbun.log

if [ -f "$LOG" ] && [ "$(wc -c < "$LOG")" -gt 1048576 ]; then
    mv "$LOG" "$LOG.1"
fi

{
    echo "===== $(date '+%Y-%m-%d %H:%M:%S %Z') ====="
    python3 /opt/certbun/certbun.py /opt/certbun/config.json
} >> "$LOG" 2>&1
