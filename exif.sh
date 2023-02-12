#!/bin/bash

cat << "EOF"

███████╗██╗░░██╗██╗███████╗
██╔════╝╚██╗██╔╝██║██╔════╝
█████╗░░░╚███╔╝░██║█████╗░░
██╔══╝░░░██╔██╗░██║██╔══╝░░
███████╗██╔╝╚██╗██║██║░░░░░
╚══════╝╚═╝░░╚═╝╚═╝╚═╝░░░░░

EOF

echo -e "\033[34m Codado por https/github.com/ddn0x\033[0m\n"

# Verifica se o exiftool está instalado
if ! [ -x "$(command -v exiftool)" ]; then
  echo -e "\033[32m exiftool não está instalado. Instalando agora...\033[0m\n"
  # Se estivermos no termux (Android)
  if [ -x "$(command -v pkg)" ]; then
    echo -e "\033[31m exiftool não está instalado. Instalando agora...\033[0m\n"
    pkg install libimage-exiftool-perl
  else
    # Se estivermos em um sistema desktop, tenta instalar o exiftool com o apt-get (Ubuntu, Debian) ou o yum (Red Hat, CentOS)
    if [ -x "$(command -v apt-get)" ]; then
      apt-get install libimage-exiftool-perl
    elif [ -x "$(command -v yum)" ]; then
      yum install libimage-exiftool-perl
    else
      # Se não soubermos como instalar o exiftool, exibe uma mensagem de erro
      echo -e "\033[34m Não foi possível instalar o exiftool. Verifique se você tem permissão para instalar pacotes e se está usando um sistema operacional compatível.\033[0m\n"
      exit 1
    fi
  fi
fi

# Lê o caminho da imagem como argumento
if [ $# -eq 0 ]; then
  echo -e "\033[36mError: É necessário fornecer o caminho da imagem como argumento.\033[0m\n"
  exit 1
fi
image_path=$1

# Obtém os metadados da imagem
metadata=$(exiftool "$image_path")

# Extrai a geolocalização dos metadados
geolocation=$(echo "$metadata" | grep -i "gps latitude" | cut -d ':' -f 2-)

# Imprime os metadados e a geolocalização
echo -e "\033[34m $metadata \033[0m\n"
echo -e "\033[34m Geolocalização: $geolocation\033[0m\n"

