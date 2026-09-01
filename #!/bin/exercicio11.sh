#!/bin/bash

echo "===== VISUALIZAÇÃO DE USUÁRIOS CONECTADOS ====="
echo "1. Listagem simples"
echo "2. Detalhes avançados (com cabeçalho e tempo de inatividade)"
read -p "Escolha a opção (1 ou 2): " OPC

echo ""
if [ "$OPC" -eq 1 ]; then
    who
elif [ "$OPC" -eq 2 ]; then
    who -H -u
else
    echo "Opção inválida. Exibindo listagem simples:"
    who
fi

echo ""
echo "Estes são os usuários atualmente conectados ao sistema."
