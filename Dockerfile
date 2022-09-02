FROM debian:buster
RUN apt-get update && apt-get upgrade && apt-get install -y gcc git make vim valgrind libreadline-dev
