#! /bin/bash

set -ex
TMP=$(mktemp -d)
cd "${TMP}" || exit

git clone https://github.com/Enigma-Labs/explore-coastlines.git .

find . -depth 1 -type f | xargs -I _ mv _ /content/
cd /content/ || exit

./scripts/get-data.sh
pip3 install -r requirements.txt
