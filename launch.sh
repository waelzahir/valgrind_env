docker build -t "val:1.0" .
docker run -it -v $PWD:/root -w /root val:1.0
