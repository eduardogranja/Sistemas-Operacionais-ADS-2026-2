#!/bin/bash
read -p "Digite o nome do arquivo a ser movido: " ARQUIVO
read -p "Digite o caminho do diretório de destino: " DESTINO

if [ ! -f "$ARQUIVO" ]; then
    echo "Erro: O arquivo '$ARQUIVO' não existe."
    exit 1
fi

if [ ! -d "$DESTINO" ]; then
    echo "Erro: O diretório '$DESTINO' não existe."
    exit 1
fi

if mv "$ARQUIVO" "$DESTINO/"; then
    echo "Sucesso: O arquivo '$ARQUIVO' foi movido para '$DESTINO' com sucesso!"
else
    echo "Erro: Falha ao mover o arquivo. Verifique as permissões."
fi
