#!/bin/bash

while true; do
    echo -e "\n===== INFORMAÇÕES DO SISTEMA ====="
    echo "1 - Data atual"
    echo "2 - Versão do kernel"
    echo "3 - Calendário"
    echo "4 - Tempo de funcionamento"
    echo "5 - Usuários conectados"
    echo "6 - Processos em execução"
    echo "7 - Sair"
    read -p "Escolha uma opção: " OPC

    case $OPC in
        1) date ;;
        2) uname -a ;;
        3) cal ;;
        4) uptime ;;
        5) who ;;
        6) ps aux | head -n 20; echo "... (exibindo apenas os 20 primeiros)" ;;
        7) echo "Saindo..."; break ;;
        *) echo "Opção inválida!" ;;
    esac
done
