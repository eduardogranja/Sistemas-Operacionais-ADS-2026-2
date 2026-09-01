#!/bin/bash

read -p "Digite o nome atual do arquivo: " ARQUIVO_ATUAL

if [ -e "$ARQUIVO_ATUAL" ]; then
    
    read -p "Digite o novo nome do arquivo: " NOVO_NOME
    mv "$ARQUIVO_ATUAL" "$NOVO_NOME"
    echo "Arquivo renomeado com sucesso de '$ARQUIVO_ATUAL' para '$NOVO_NOME'."
else
    echo "Erro: O arquivo '$ARQUIVO_ATUAL' não existe."
fi
