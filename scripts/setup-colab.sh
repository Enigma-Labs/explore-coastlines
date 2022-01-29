#! /bin/bash
set -ex
TMP=$(mktemp -d)
cd "${TMP}" || exit

git clone https://github.com/Enigma-Labs/explore-coastlines.git .

mv "${TMP}"/* /content/
cd /content/ || exit

./scripts/get-data.sh
apt update && apt install virtualenv && virtualenv -p $(which python3) .venv
pip3 install -r requirements.txt
