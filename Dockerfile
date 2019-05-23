FROM python:3.6
ENV PYTHONUNBUFFERED 1
RUN mkdir /webapp
WORKDIR /webapp

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
libsqlite3-dev
RUN pip install -U pip setuptools
COPY requirements.txt /webapp/
COPY requirements-opt.txt /webapp/
RUN pip install -r /webapp/requirements.txt
RUN pip install -r /webapp/requirements-opt.txt
ADD . /webapp/

EXPOSE 8000
