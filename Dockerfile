FROM python:3.7-alpine
MAINTAINER Harleen Kaur Intern

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
COPY ./.app /app
WORKDIR /app

RUN adduser -D user
USER user
