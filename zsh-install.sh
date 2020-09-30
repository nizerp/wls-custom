#!/bin/bash
set -e

# Instalação do Homebrew (https://brew.sh/)
# Com o Homebrew é possível facilmente instalar programas como o Node, Java e Maven
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"

# Comando para atualização do repositório do apt
sudo apt-get update

# Instalação do basico para compilação de programas C e C++
# Necessário para algumas dependências
sudo apt-get install build-essential -y

# Iniciar o Homebrew sem reiniciar o terminal
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

# Instalação do Node.js
brew install node

# Instaão do zsh
sudo apt-get install zsh -y
sudo usermod -a -G staff $(whoami)
sudo chown root:staff /usr/local/share/zsh/site-functions
sudo chmod 775 /usr/local/share/zsh/site-functions

# Instalação do Pure (https://github.com/sindresorhus/pure)
# "Pretty, minimal and fast ZSH prompt"
npm install --global pure-prompt

# Instalação do Syntax Highlighting para zsh (https://github.com/zsh-users/zsh-syntax-highlighting)
brew install zsh-syntax-highlighting

# Instalação do https://github.com/pawel-slowik/zsh-term-title
# Faz com que o título da janela do terminal seja o programa em execução dentor do zsh
git clone https://github.com/pawel-slowik/zsh-term-title ~/.zsh/plugins/zsh-term-title

# Define o zsh como terminal padrão
chsh -s /bin/zsh

