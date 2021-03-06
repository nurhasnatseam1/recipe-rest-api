FROM python:3.7-alpine
ENV PYTHONUNBUFFERED 1


RUN mkdir /app
WORKDIR /app
ADD ./requirements.txt /app
RUN pip install -r requirements.txt
ADD . /app


RUN adduser -D user
USER user
