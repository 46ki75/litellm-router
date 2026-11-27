#!/bin/bash
set -e

cd "$(dirname "$0")"

exec uv run --env-file .env litellm \
  --config config.yaml \
  --host 127.0.0.1
