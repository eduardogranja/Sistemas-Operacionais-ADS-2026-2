#!/bin/bash

read -p "Digite o nome do processo que deseja procurar: " PROCESSO

# Executa ps aux, busca a palavra, excluindo a linha do próprio grep
RESULTADO=$(ps aux | grep -i "$PROCESSO" | grep -v "grep")

if [ -n "$RESULTADO" ]; then
    echo "Processos encontrados:"
    echo "$RESULTADO"
else
    echo "Nenhum processo correspondente a '$PROCESSO' foi encontrado."
fi
