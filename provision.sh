#!/bin/bash
set -euo pipefail

echo "Iniciando o script de provisionamento..."

# Função para instalar ferramentas básicas e atualizar o sistema
install_base_tools() {
    echo "--> Atualizando o sistema e instalando ferramentas básicas..."
    sudo apt update && sudo apt upgrade -y
    sudo apt install -y git curl unzip software-properties-common gnupg watch
}

# Função para instalar e configurar o Git
install_git() {
    echo "--> Instalando e configurando o Git..."
    sudo apt install -y git
    # vagrant up 
    git --version
}

# Função para instalar o Docker
install_docker() {
    echo "--> Instalando o Docker..."
    curl -fsSL https://get.docker.com -o get-docker.sh
    sudo sh get-docker.sh
    # Adiciona o usuário atual (vagrant) ao grupo docker para executar comandos sem sudo
    sudo usermod -aG docker vagrant
    # A `newgrp` não funciona bem em scripts de provisionamento, mas a alteração de grupo persistirá após o reboot da VM.
    # Vamos adicionar uma nota para o usuário.
    echo "AVISO: O grupo 'docker' foi adicionado. O comando 'docker run' pode precisar ser executado manualmente após o provisionamento."
}

main() {
    install_base_tools
    install_git
    install_docker
    
    echo "✅ Provisionamento concluído!"
    echo "Reinicie a máquina virtual ou faça login novamente para que as alterações no grupo 'docker' tenham efeito."
}

main