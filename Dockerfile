FROM python:3.7.4

WORKDIR /home

COPY . .

ENV FLASK_APP=autoapp.py

env DATABASE_URL=postgresql://myUsr:somePwd@localhost:5432/myUsr

RUN pip install -r requirements.txt

RUN flask db upgrade

RUN flask test
