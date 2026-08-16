#!/bin/bash
set -e

cd "$(dirname "$0")"

exec uv run litellm \
  --config config.yaml \
  --host 127.0.0.1 \
  --port 23458
