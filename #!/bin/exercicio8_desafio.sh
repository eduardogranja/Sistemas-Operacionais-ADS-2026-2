#!/bin/bash

read -p "Digite o primeiro arquivo: " ARQ1
read -p "Digite o segundo arquivo: " ARQ2
read -p "Digite o arquivo de destino (para anexar): " DESTINO

if [ -f "$ARQ1" ] && [ -f "$ARQ2" ]; then
    cat "$ARQ1" "$ARQ2" >> "$DESTINO"
    echo "Conteúdo anexado ao arquivo '$DESTINO' com sucesso."
else
    echo "Erro: Um ou ambos os arquivos de origem não existem."
fi
