#!/bin/bash
set -xeuo pipefail

cd "$(dirname "${BASH_SOURCE[0]}")"

DATA_DIR="$(pwd)/data"

EXPECT_FILE="$DATA_DIR/main.pdf"

rm -f "$EXPECT_FILE"

docker build .. -t test
docker run --rm -v "$DATA_DIR:/data" test pdflatex main.tex

if [[ ! -f "$EXPECT_FILE" ]]; then
  echo "File \"$EXPECT_FILE\" wasn't created" >&2
  exit 1
fi

echo "Success"
exit 0
