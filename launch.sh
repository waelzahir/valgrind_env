docker build -t "val:1.0" .
docker run -it -v $PWD:/tmp -w /tmp val:1.0
