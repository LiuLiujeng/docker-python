FROM "python:3.7-slim-stretch"

ARG SOURCE_CODE

WORKDIR /app

COPY $SOURCE_CODE /app/

RUN apt-get update \
    && apt-get upgrade \
    && apt-get clean

RUN pip install -r requirements.txt \
    && python3.7 -V
