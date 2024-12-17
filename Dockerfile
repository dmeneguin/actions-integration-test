FROM python:3.9.16-slim-buster

WORKDIR /

RUN apt-get update && apt-get install gcc && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

EXPOSE 8800
EXPOSE 10000

CMD tail -f /dev/null