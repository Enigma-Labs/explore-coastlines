#! /bin/bash

CONTENT=/content
REPOSITORY=${CONTENT}/repo
rm -rf $REPOSITORY $CONTENT

git clone https://github.com/Enigma-Labs/explore-coastlines.git "$REPOSITORY"

./repo/scripts/get-data.sh

mv -f "$REPOSITORY"/* /content/

pip3 install -r requirements.txt
