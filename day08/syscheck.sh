#!/usr/bin/env bash
set -euo pipefail

LOGFILE="syscheck_$(date +%F_%H%M%S).log"
exec > >(tee -a "$LOGFILE") 2>&1

HOST="localhost"
PORT=""
PING_COUNT=2
VERBOSE=false

usage() {
  echo "Usage: $0 [-H host] [-p port] [-n ping_count] [-v]"
}

while getopts "hH:p:n:v" opt; do
  case "$opt" in
    h) usage; exit 0;;
    H) HOST="$OPTARG";;
    p) PORT="$OPTARG";;
    n) PING_COUNT="$OPTARG";;
    v) VERBOSE=true;;
  esac
done

log() { echo "[$(date +%T)] $*"; }

log "Pinging $HOST..."
ping -c "$PING_COUNT" "$HOST"

if [[ -n "$PORT" ]]; then
  if nc -zv "$HOST" "$PORT"; then
    log "Port $PORT open"
  else
    log "Port $PORT closed"
  fi
fi

if command -v dig >/dev/null; then
  log "DNS for $HOST:"
  dig +short "$HOST"
fi

log "Done."
