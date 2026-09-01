#!/bin/bash

read -p "Digite o nome do usuário: " USUARIO

# Usa o grep com busca exata (^usuario:) no /etc/passwd
if grep -q "^${USUARIO}:" /etc/passwd; then
    echo "Usuário encontrado."
else
    echo "Usuário não encontrado."
fi
