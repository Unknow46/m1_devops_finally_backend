FROM python:3.7.4

WORKDIR /home

COPY . .

RUN pip install -r requirements.txt

RUN flask db upgrade

RUN flask test
