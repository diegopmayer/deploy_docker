FROM python:3.6
ENV PYTHONUNBUFFERED 1
RUN mkdir /webapp
WORKDIR /webapp

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
libsqlite3-dev
RUN pip install -U pip setuptools
ADD requirements.txt /webapp/
RUN pip install -r requirements.txt
ADD . /webapp/

EXPOSE 8000
