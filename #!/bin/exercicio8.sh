#!/bin/bash

read -p "Digite o primeiro arquivo: " ARQ1
read -p "Digite o segundo arquivo: " ARQ2
read -p "Digite o nome do arquivo de destino: " DESTINO

if [ -f "$ARQ1" ] && [ -f "$ARQ2" ]; then
    cat "$ARQ1" "$ARQ2" > "$DESTINO"
    echo "Arquivos concatenados em '$DESTINO' com sucesso."
else
    echo "Erro: Um ou ambos os arquivos de origem não existem."
fi
