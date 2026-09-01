#!/bin/bash

read -p "Digite a palavra ou string a ser procurada: " PALAVRA
read -p "Digite o nome do arquivo: " ARQUIVO

if [ ! -f "$ARQUIVO" ]; then
    echo "Erro: O arquivo '$ARQUIVO' não existe."
    exit 1
fi

RESULTADO=$(grep -n "$PALAVRA" "$ARQUIVO")

if [ -n "$RESULTADO" ]; then
    echo "A palavra '$PALAVRA' foi encontrada no arquivo!"
    echo "--- Linhas encontradas ---"
    echo "$RESULTADO"
else
    echo "A palavra '$PALAVRA' não foi encontrada."
fi
