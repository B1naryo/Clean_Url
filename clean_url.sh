#!/bin/bash

# Verifica se o arquivo foi fornecido como argumento
if [ $# -ne 1 ]; then
    echo "Uso: $0 <arquivo_de_urls>"
    exit 1
fi

# Verifica se o arquivo existe
if [ ! -f "$1" ]; then
    echo "Arquivo não encontrado: $1"
    exit 1
fi

# Loop para ler cada linha do arquivo
while IFS= read -r line; do
    # Usa o comando sed para remover tudo antes de 'https://' ou 'http://'
    cleaned_url=$(echo "$line" | sed 's/.*\(https\?:\/\/[^ ]*\).*/\1/')
    
    # Verifica se a URL está vazia após a limpeza
    if [ -n "$cleaned_url" ]; then
        echo "$cleaned_url"
    fi
done < "$1"

