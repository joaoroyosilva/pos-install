#!/bin/bash

## Removendo travas eventuais do apt ##

sudo rm /var/lib/dpkg/lock-frontend; sudo rm /var/cache/apt/archives/lock ;

## Adicionando/Confirmando arquitetura de 32 bits ##

sudo dpkg --add-architecture i386 

## Atualizando o repositório ##

sudo apt update

## Adicionando repositórios de terceiros e suporte a Snap ##

sudo apt-add-repository ppa:graphics-drivers/ppa -y

sudo add-apt-repository -y ppa:libreoffice/ppa

sudo apt install snapd -y

## Atualizando o repositório depois da adição de novos repositórios ##

sudo apt update

## Download e instalaçao de programas externos ##

cd /home/$USER/Downloads/

wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

wget -c https://az764295.vo.msecnd.net/stable/b37e54c98e1a74ba89e03073e5a3761284e3ffb0/code_1.38.1-1568209190_amd64.deb

wget -c https://releases.hashicorp.com/vagrant/2.2.5/vagrant_2.2.5_x86_64.deb

wget -c https://download.virtualbox.org/virtualbox/6.0.12/virtualbox-6.0_6.0.12-133076~Ubuntu~bionic_amd64.deb

wget -c https://download.anydesk.com/linux/anydesk_5.1.2-1_amd64.deb?_ga=2.213555284.1333597672.1570060338-99539489.1570060338

wget -c https://github.com/infinitered/reactotron/releases/download/v2.17.1/reactotron-app_2.17.1_amd64.deb

wget -c https://dl.discordapp.net/apps/linux/0.0.9/discord-0.0.9.deb

wget -c https://ufpr.dl.sourceforge.net/project/jasperstudio/JaspersoftStudio-6.10.0/TIB_js-studiocomm_6.10.0_linux_amd64.deb

## Instalando pacotes .deb baixados na sessão anterior ##

sudo dpkg -i *.deb

sudo apt-get --fix-broken install -y

## Programas do repositório APT##


sudo apt install git gdebi remmina remmina-rdp-plugin -y


## Instalando pacotes Snap ##

sudo snap install spotify

sudo snap install postman

sudo snap install phpstorm --classic

sudo snap install android-studio --classic

## Finalização, atualização e limpeza##


sudo apt update && sudo apt dist-upgrade -y

sudo apt autoclean 

sudo apt autoremove -y

echo "Chegamos ao final"

