#!/bin/bash

read -p "Digite o nome do arquivo que deseja remover: " ARQUIVO	

if [ -f "$ARQUIVO" ]; then
    rm "$ARQUIVO"
    echo "Sucesso: O arquivo '$ARQUIVO' foi removido."
else
    echo "Erro: O arquivo '$ARQUIVO' não foi encontrado ou não é um arquivo comum."
fi
