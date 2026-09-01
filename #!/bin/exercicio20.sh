#!/bin/bash

while true; do
    echo -e "\n===== GERENCIAMENTO DE ARQUIVOS ====="
    echo "1 - Procurar arquivo"
    echo "2 - Procurar palavra em arquivo"
    echo "3 - Renomear arquivo"
    echo "4 - Mover arquivo"
    echo "5 - Remover arquivo"
    echo "6 - Comparar arquivos"
    echo "7 - Sair"
    read -p "Opção: " OPC

    case $OPC in
        1)
            read -p "Nome do arquivo a buscar: " NOME
            find . -name "$NOME"
            ;;
        2)
            read -p "Palavra: " PAL
            read -p "Arquivo: " ARQ
            grep -n "$PAL" "$ARQ" 2>/dev/null || echo "Não encontrado ou erro."
            ;;
        3)
            read -p "Nome atual: " ATUAL
            read -p "Novo nome: " NOVO
            [ -e "$ATUAL" ] && mv "$ATUAL" "$NOVO" || echo "Arquivo não encontrado."
            ;;
        4)
            read -p "Arquivo: " ARQ
            read -p "Destino: " DEST
            [ -f "$ARQ" ] && [ -d "$DEST" ] && mv "$ARQ" "$DEST/" || echo "Erro nos caminhos."
            ;;
        5)
            read -p "Arquivo a remover: " REM
            rm -i "$REM"
            ;;
        6)
            read -p "Arquivo 1: " A1
            read -p "Arquivo 2: " A2
            diff "$A1" "$A2"
            ;;
        7) echo "Saindo..."; break ;;
        *) echo "Opção inválida!" ;;
    esac
done
