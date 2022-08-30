#! /bin/bash


source=/Users/$USER/Library/Containers/com.docker.docker
dest=/goinfre/$USER/docker

echo "this script will set docker to be linked to your goinfre, before you continue uninstall docker from the MSC"
read -r -p "type yes to continue or no to quit? "  var


if [[ "$var" = "n" || "$var" = "no" ||  "$var" = "N" || "$var" = "NO" ]]
then
	echo nice
elif [[ "$var" = "y" || "$var" = "yes" ||  "$var" = "Y" || "$var" = "YES" ]]
then
	rm -rf $source
	rm -rf $dest
	mkdir $dest
	ln -s $dest $source
	echo "now install and run docker"
else
	echo $var "is not an option"
	exit
fi

read -r -p "if docker is running type 'build' to build the container: " build

if [ "$build" = "build" ]
then
	read -r -p "name your container: " name
	docker build -t "$name:1.0" .
fi
read -r -p "type your container name to run it: " cont
docker run -it -v $PWD:/root -w /root $cont:1.0




