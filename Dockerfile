FROM python:3.7-alpine
MAINTAINER Harleen Kaur Intern

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

WORKDIR /app
RUN mkdir /appbuild
WORKDIR /appbuild
COPY ../app /appbuild

RUN adduser -D user
USER user
