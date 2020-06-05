#!/bin/bash

## Removendo travas eventuais do apt ##

sudo rm /var/lib/dpkg/lock-frontend; sudo rm /var/cache/apt/archives/lock ;

## Atualizando o repositório ##

sudo apt update

## Adicionando repositórios de terceiros e suporte a Snap ##

sudo apt install software-properties-common -y

sudo apt-add-repository ppa:graphics-drivers/ppa -y

sudo add-apt-repository ppa:libreoffice/ppa -y

sudo apt-add-repository ppa:remmina-ppa-team/remmina-next -y

sudo apt install snapd -y

## Atualizando o repositório depois da adição de novos repositórios ##

sudo apt update

## Download e instalaçao de programas externos ##

cd $HOME/Downloads/

wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

wget -c https://az764295.vo.msecnd.net/stable/b37e54c98e1a74ba89e03073e5a3761284e3ffb0/code_1.38.1-1568209190_amd64.deb

wget -c https://github.com/infinitered/reactotron/releases/download/v2.17.1/reactotron-app_2.17.1_amd64.deb

wget -c https://dl.discordapp.net/apps/linux/0.0.9/discord-0.0.9.deb

wget -c https://dl.teamviewer.com/download/linux/version_14x/teamviewer_14.6.2452_amd64.deb

## Instalando pacotes .deb baixados na sessão anterior ##

sudo dpkg -i *.deb

sudo apt-get --fix-broken install -y

## Programas do repositório APT##

sudo apt install git gdebi remmina remmina-plugin-rdp unzip unrar curl fonts-firacode gparted zsh -y

## Instalando pacotes Snap ##

sudo snap install spotify

sudo snap install postman

sudo snap install android-studio --classic

sudo snap install phpstorm --classic

## Instalação do node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.0/install.sh | bash

cd

## Configuração do android-studio

sudo apt install qemu-kvm libvirt-clients libvirt-daemon-system bridge-utils virt-manager -y

sudo adduser $USER libvirt

sudo adduser $USER libvirt-qemu

sudo adduser $USER kvm

echo "export ANDROID_HOME=$HOME/Android/Sdk" >> $HOME/.bashrc
echo "export PATH=\$PATH:\$ANDROID_HOME/emulator" >> $HOME/.bashrc
echo "export PATH=\$PATH:\$ANDROID_HOME/tools" >> $HOME/.bashrc
echo "export PATH=\$PATH:\$ANDROID_HOME/tools/bin" >> $HOME/.bashrc
echo "export PATH=\$PATH:\$ANDROID_HOME/platform-tools" >> $HOME/.bashrc

<<<<<<< HEAD

echo "export ANDROID_HOME=$HOME/Android/Sdk" >> $HOME/.zshrc
echo "export PATH=\$PATH:\$ANDROID_HOME/emulator" >> $HOME/.zshrc
echo "export PATH=\$PATH:\$ANDROID_HOME/tools" >> $HOME/.zshrc
echo "export PATH=\$PATH:\$ANDROID_HOME/tools/bin" >> $HOME/.zshrc
echo "export PATH=\$PATH:\$ANDROID_HOME/platform-tools" >> $HOME/.zshrc


## Instalação Docker

sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common -y

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
   
sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io

sudo groupadd docker

sudo usermod -aG docker $USER

newgrp docker 

sudo curl -L "https://github.com/docker/compose/releases/download/1.26.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose



## Finalização, atualização e limpeza##

sudo apt update && sudo apt dist-upgrade -y

sudo apt autoclean -y

sudo apt autoremove -y

rm $HOME/Downloads/*


echo "Chegamos ao final"


sudo reboot now

