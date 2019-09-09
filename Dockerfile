FROM python:3.7-alpine

LABEL company="Cafafans Coders Inc. Ltd"
LABEL author="Emeka Augustine"

ENV PYTHONUNBUFFERED 1

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

RUN adduser -D cafafanscoders
USER cafafanscoders
