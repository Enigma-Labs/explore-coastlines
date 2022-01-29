#! /bin/bash

if [ ! -d "${PWD}/data" ]; then
  mkdir data
  curl -o data/tl_2021_us_coastline.zip https://www2.census.gov/geo/tiger/TIGER2021/COASTLINE/tl_2021_us_coastline.zip
  cd data && unzip tl_2021_us_coastline.zip
fi
