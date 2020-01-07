FROM python:3.7.4

WORKDIR /home

COPY . .

RUN pip install -r requirements/dev.txt --user

RUN flask db upgrade

CMD ["flask", "test"]
