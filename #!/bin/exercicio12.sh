#!/bin/bash

read -p "Digite o nome do arquivo: " ARQUIVO

if [ ! -e "$ARQUIVO" ]; then
    echo "Erro: O arquivo '$ARQUIVO' não existe."
    exit 1
fi

echo "Escolha a permissão desejada:"
echo "1. 644 (Leitura/Escrita para dono, Leitura para o resto)"
echo "2. 755 (Total para dono, Leitura/Execução para o resto)"
echo "3. 700 (Total apenas para o dono)"
echo "4. Personalizada (digitar o octal manual)"
read -p "Opção: " OPC

case $OPC in
    1) PERM="644" ;;
    2) PERM="755" ;;
    3) PERM="700" ;;
    4) read -p "Digite a permissão no formato octal (ex: 777): " PERM ;;
    *) echo "Opção inválida."; exit 1 ;;
esac

chmod "$PERM" "$ARQUIVO"
echo "Permissão do arquivo '$ARQUIVO' modificada com sucesso para $PERM."
