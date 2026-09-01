#!/bin/bash

read -p "Digite o PID do processo a ser encerrado: " PID

# Desafio: Verifica se o PID existe na tabela de processos
if ! ps -p "$PID" > /dev/null 2>&1; then
    echo "Erro: O PID '$PID' não foi encontrado entre os processos ativos."
    exit 1
fi

echo "Informações do processo selecionado:"
ps -p "$PID" -o pid,user,args

read -p "Deseja realmente encerrar esse processo? (s/n): " CONFIRMA

if [ "$CONFIRMA" = "s" ] || [ "$CONFIRMA" = "S" ]; then
    kill "$PID"
    echo "Comando de encerramento enviado ao processo $PID."
else
    echo "Operação cancelada."
fi
