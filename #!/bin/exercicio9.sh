#!/bin/bash

read -p "Digite o caminho do primeiro arquivo: " ARQ1
read -p "Digite o caminho do segundo arquivo: " ARQ2

if [ ! -f "$ARQ1" ] || [ ! -f "$ARQ2" ]; then
    echo "Erro: Verifique se os dois arquivos existem."
    exit 1
fi

# diff -q retorna status 0 para iguais, 1 para diferentes
if diff -q "$ARQ1" "$ARQ2" > /dev/null; then
    echo "Os arquivos são iguais."
else
    echo "Os arquivos possuem diferenças."
    echo "--- Diferenças encontradas ---"
    diff "$ARQ1" "$ARQ2"
fi
