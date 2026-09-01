#!/bin/bash

read -p "Digite o nome do usuário: " USUARIO

# Desafio: Verifica se o usuário existe
LINHA_USER=$(grep "^${USUARIO}:" /etc/passwd)

if [ -z "$LINHA_USER" ]; then
    echo "Erro: O usuário '$USUARIO' não foi encontrado no sistema."
    exit 1
fi

# Extrai o Home Directory (6º campo separado por :)
HOME_DIR=$(echo "$LINHA_USER" | cut -d: -f6)

echo "--- Informações do Usuário ---"
echo "Nome do usuário: $USUARIO"
echo "Diretório de trabalho: $HOME_DIR"

if [ -d "$HOME_DIR" ]; then
    # du -sh para pegar tamanho legível
    TAMANHO=$(du -sh "$HOME_DIR" 2>/dev/null | cut -f1)
    echo "Espaço utilizado no disco: $TAMANHO"
else
    echo "Espaço utilizado no disco: Diretório home não encontrado no sistema de arquivos."
fi
