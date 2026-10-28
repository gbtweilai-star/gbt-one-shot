#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_one_shot info
PYTHONPATH=src python -m gbt_one_shot check --payload '{}'
PYTHONPATH=src python -m gbt_one_shot run   --payload '{}'
