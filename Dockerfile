FROM python:3.7-alpine
MAINTAINER Harleen Kaur Intern

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /appbuild
COPY ./app /appbuild
WORKDIR /appbuild

RUN adduser -D user
USER user
