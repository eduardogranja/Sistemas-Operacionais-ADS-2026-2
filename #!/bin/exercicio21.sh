#!/bin/bash

while true; do
    echo -e "\n===== GERENCIAMENTO DE PROCESSOS ====="
    echo "1 - Listar processos"
    echo "2 - Procurar processo"
    echo "3 - Encerrar processo"
    echo "4 - Sair"
    read -p "Escolha uma opção: " OPC

    case $OPC in
        1)
            ps -ef
            ;;
        2)
            read -p "Digite o nome do processo: " PROC
            ps aux | grep -i "$PROC" | grep -v "grep"
            ;;
        3)
            read -p "Digite o PID a encerrar: " PID
            if ps -p "$PID" >/dev/null 2>&1; then
                read -p "Confirmar encerramento do PID $PID? (s/n): " CONF
                [ "$CONF" = "s" ] && kill "$PID" && echo "Sinal enviado."
            else
                echo "PID inválido ou inexistente."
            fi
            ;;
        4)
            echo "Saindo..."
            break
            ;;
        *)
            echo "Opção inválida!"
            ;;
    esac
done
