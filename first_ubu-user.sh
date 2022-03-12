#!/bin/bash
sudo apt update -y
sudo apt upgrade -y
sudo apt install -y \
	vim \
	git \
	curl \
	htop \
	ansible \
	unzip \
	nginx \
	zsh \
	python3-pip \
	python3-setuptools

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

wget https://raw.githubusercontent.com/blurer/myBS/master/zshrc -o $HOME/.zshrc
wget https://raw.githubusercontent.com/blurer/myBS/master/authorized_keys -o $HOME/.ssh/

sudo systemctl start nginx
sudo systemctl enable nginx

mkdir $HOME/dev/
mkdir $HOME/dev/resume/
