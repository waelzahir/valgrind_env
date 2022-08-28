FROM debian:buster
RUN apt-get update && apt-get upgrade && apt-get install -y gcc make vim valgrind libreadline-dev
