#!/bin/bash

install_apps() {
    echo "Instalando pacotes flatpak..."
    flatpak install flathub md.obsidian.Obsidian -y
    flatpak install flathub com.spotify.Client -y
    flatpak install flathub com.valvesoftware.Steam -y
    flatpak install flathub com.obsproject.Studio -y
    echo "Instalação de flatpaks finalizada."

}

# Boas Vindas

echo -e "\033[1;31mFazendo configurações iniciais\033[m"
echo -e "\033[1;32mOperação Finalizada.\033[m"
echo -e "\033[1;33mAguarde...\033[m"

# Atualizações e instalações iniciais/essenciais

sudo apt update -y && sudo apt upgrade --yes
sudo apt install openssh-server -y
sudo apt install samba nautilus-share net-tools --yes
sudo apt install build-essential cmake --yes
sudo apt install cmatrix btop fastfetch -y

# Cria e organiza sistema de pastas e arquivos

echo "Criando pasta ~/Codes/\n"
mkdir -p ~/Codes/
echo "Criando pasta ~/Apps\n"
mkdir -p ~/Apps/
echo "Criando arquivo .hidden\n" 
touch ~/.hidden
echo "Configura 'atualiza' em .bashrc"
echo "\n\n# ===== meus alias =====\n">>~/.bashrc
echo "alias atualiza=\"sudo apt update && sudo apt upgrade -y\"">>~/.bashrc


# install_apps()


# Fim do script
echo "Utilize 'source ~/.bashrc' ou reinicie o terminal para validar as alterações."
echo -e "\033[1;32mOperação Finalizada.\033[m"

