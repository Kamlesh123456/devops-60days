#!/usr/bin/env bash
# Enable strict mode
set -euo pipefail

# Make a temp directory
tmpdir="$(mktemp -d)"
echo "Created temp dir: $tmpdir"

# Define cleanup function
cleanup() {
  echo "Cleaning up..."
  rm -rf "$tmpdir"
  echo "Temp dir $tmpdir removed."
}

# Register cleanup to run on exit, Ctrl+C, or kill
trap cleanup EXIT INT TERM

# Simulate work
echo "Doing some work..."
sleep 5
echo "Work finished!"

