#!/usr/bin/env bash
set -euo pipefail
flutter run \
  --release \
  --dart-define=FLAVOR=prod \
  --dart-define=API_BASE_URL=${API_BASE_URL:?} \
  --dart-define=AI_API_KEY=${AI_API_KEY:?} \
  --dart-define=AI_MODEL=${AI_MODEL:-gpt-4o-mini} \
  --dart-define=TIMEOUT_MS=${TIMEOUT_MS:-30000}
