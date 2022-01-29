#! /bin/bash
set -ex
TMP=$(mktemp -d)
cd "${TMP}" || exit

wget https://raw.githubusercontent.com/Enigma-Labs/explore-coastlines/main/requirements.txt
wget https://raw.githubusercontent.com/Enigma-Labs/explore-coastlines/main/coastline_incidents.graphql
wget https://raw.githubusercontent.com/Enigma-Labs/explore-coastlines/main/scripts/get-data.sh

mv "${TMP}"/* /content/
cd /content/ || exit

chmod +x get-data.sh && ./get-data.sh
apt update && apt install virtualenv && virtualenv -p $(which python3) .venv
pip3 install -r requirements.txt
