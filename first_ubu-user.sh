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
	zsh \
	python3-pip \
	python3-setuptools \
	fail2ban 

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cd $HOME/
wget https://raw.githubusercontent.com/blurer/myBS/master/zshrc
mv zshrc .zshrc

mkdir $HOME/.ssh/
$HOME/.ssh/
wget https://raw.githubusercontent.com/blurer/myBS/master/authorized_keys
chmod 600 authorized_keys

sudo systemctl enable fail2ban

source .zshrc
