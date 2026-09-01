#!/bin/bash

echo "===== PROCURAR ARQUIVOS ====="
echo "1. Procurar um arquivo utilizando find"
echo "2. Procurar um comando utilizando whereis"
echo "3. Procurar um arquivo utilizando locate"
read -p "Escolha uma opção (1-3): " OPC

case $OPC in
    1)
        read -p "Digite o nome do arquivo para o find: " ALVO
        find / -name "$ALVO" 2>/dev/null
        ;;
    2)
        read -p "Digite o nome do comando para o whereis: " ALVO
        whereis "$ALVO"
        ;;
    3)
        read -p "Digite o nome do arquivo para o locate: " ALVO
        locate "$ALVO"
        ;;
    *)
        echo "Opção inválida."
        ;;
esac
