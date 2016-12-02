#!/usr/bin/env bash

echo "***********************************"
echo 'Setting up proxy'
echo "***********************************"

yum clean all

echo "***********************************"
echo 'Setting up wget'
echo "***********************************"

if [ -x /usr/bin/wget ];then

	echo "wget is installed."
else	

	sudo yum -y install wget
fi	

echo "***********************************"
echo 'Setting up java'
echo "***********************************"

if [ -x /usr/bin/java ];then

	echo "java is installed"	
else
	
	sudo wget -q --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u45-b14/jdk-8u45-linux-x64.rpm"
	sudo rpm -Uvh jdk-8u45-linux-x64.rpm
fi 

echo "***********************************"
echo 'Setting up Git'
echo "***********************************"

if [ -x /usr/bin/git ];then

	echo "Git is already installed";
else

	sudo yum -y install git
fi
#git config --global user.name "nirbhay patil"
#git config --global user.email "nirbhay.patil@capgemini.com"


echo "***********************************"
echo 'Setting up Nodejs'
echo "***********************************"

if [ -x /usr/bin/node ];then

	echo "nodejs is already installed";
else

	echo "installing nodejs";
	cd ~
	wget http://nodejs.org/dist/v6.0.0/node-v6.0.0-linux-x64.tar.gz

	sudo tar --strip-components 1 -xzvf node-v* -C /usr

	sudo npm config set strict-ssl false
fi	

#sudo npm cache clean -f  
if [ -x /usr/bin/protractor ];then

	echo "protractor is already installed"
else

	echo "installing protractor"
	sudo npm install -g protractor
fi

