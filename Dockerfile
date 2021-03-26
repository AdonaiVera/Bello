FROM python:3-slim

RUN set eux; \
    apt-get update; \
    apt-get -y upgrade; \
    apt-get install gcc -y; \
    apt-get install g++ -y;

COPY ./requirements.txt ./requirements.txt

RUN set eux; \
    pip install requests==2.24.0; \
    pip install --no-cache-dir -r requirements.txt;

COPY . .

EXPOSE 8501
