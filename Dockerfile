FROM python:3.8-slim-buster

WORKDIR /app

RUN apt-get update -y && apt-get install git -y
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

CMD bash start.sh