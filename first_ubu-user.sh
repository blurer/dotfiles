#!/bin/bash
sudo apt update -y
sudo apt upgrade -y
sudo apt install -y \
	vim \
	git \
	curl \
	htop \
	unzip \
	zsh \
	python3-pip \
	python3-setuptools \

wget https://raw.githubusercontent.com/blurer/myBS/main/bashrc
mv bashrc .bashrc
source .bashrc
