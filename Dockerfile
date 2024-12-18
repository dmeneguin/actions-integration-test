FROM python:3.9.16-slim-buster

WORKDIR /

RUN apt-get update && apt-get install gcc -y && rm -rf /var/lib/apt/lists/*

COPY . .

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

#CMD ["/bin/bash", "-c", "python script1.py;python script2.py;python script3.py"]