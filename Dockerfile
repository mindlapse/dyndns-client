FROM ubuntu:16.04

RUN apt-get update && apt-get install -y dos2unix

COPY client.sh /client.sh

RUN dos2unix /client.sh

ENTRYPOINT ["/client.sh"]
