#! /bin/bash

CONTENT=/content
REPOSITORY=${CONTENT}/repo
rm -rf $REPOSITORY $CONTENT

git clone https://github.com/Enigma-Labs/explore-coastlines.git "$REPOSITORY"

./repo/scripts/get-data.sh

mv -f "$REPOSITORY"/* /content/

wget https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh
$SHELL Miniconda3-py38_4.10.3-Linux-x86_64.sh 

conda env create -f environment.yml
