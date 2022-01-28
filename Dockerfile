FROM python:3.9-buster

WORKDIR /app

RUN apt-get update \
    && apt-get install -yy \
        libgdal-dev \
        libgeos-dev \
        python3-dev \
        python3-rtree

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .
