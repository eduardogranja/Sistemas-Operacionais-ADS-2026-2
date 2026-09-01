#!/bin/bash

read -p "Digite o nome do arquivo: " ARQUIVO

if [ ! -f "$ARQUIVO" ]; then
    echo "Erro: O arquivo '$ARQUIVO' não existe."
    exit 1
fi

LINHAS=$(wc -l < "$ARQUIVO")
PALAVRAS=$(wc -w < "$ARQUIVO")
CARACTERES=$(wc -m < "$ARQUIVO")

echo "Arquivo: $ARQUIVO"
echo "Linhas: $LINHAS"
echo "Palavras: $PALAVRAS"
echo "Caracteres: $CARACTERES"
