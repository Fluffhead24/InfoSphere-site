#!/usr/bin/env bash
set -euo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
repo_root="$(cd "$script_dir/.." && pwd)"

cd "$repo_root"

python3 - <<'PY'
from html.parser import HTMLParser
from pathlib import Path

class Parser(HTMLParser):
    pass

for path in Path(".").glob("*.html"):
    Parser().feed(path.read_text(encoding="utf-8"))
    print(f"parsed {path}")
PY

if rg -n 'Infosphere26!|sandboxsonar@gmail\.com|UlFnX0hLYjhf|oauth\.x\.client\.id=[A-Za-z0-9_:-]{8,}|client_secret\s*=|access_token\s*=|refresh_token\s*=' \
  -g '!**/.git/**' \
  -g '!scripts/check-public-site.sh' \
  .; then
  echo "Credential-like public site text found."
  exit 1
fi

echo "Public site check passed."
