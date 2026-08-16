#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"
umask 077

uv run python -c '
from litellm.llms.chatgpt.authenticator import Authenticator

Authenticator()._login_device_code()
print("ChatGPT authorization saved.")
'

auth_file="${CHATGPT_TOKEN_DIR:-$HOME/.config/litellm/chatgpt}/${CHATGPT_AUTH_FILE:-auth.json}"
chmod 600 "$auth_file"
