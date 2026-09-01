#!/bin/bash

read -p "Digite o primeiro número: " num1
read -p "Digite o segundo número: " num2

echo ""
echo "===MENU DE OPÇÔES==="
echo "1. Soma"
echo "2. Subtração"
echo "3. Multiplicação"
echo "4. Divisão"
echo "5. Sair"
echo "===================="

read -p "Escolha uma opção (1-5): " opcao
case $opcao in
 1)
  resultado=$(expr $num1 + $num2)
  echo "Resultado da Soma: $resultado"
  ;;
 2)
  resultado=$(expr $num1 - $num2)
  echo "Resultado da Subtração: $resultado"
  ;;
 3) 
  resultado=$(expr $num1 \* $num2)
  echo "Resultado da Multiplicação: $resultado"
  ;;
 4)
  if [ $num2 -eq 0 ] ; then
     echo "Erro: não é possível dividir por zero!"
  else 
     resultado=$(expr $num1 / $num2)
     echo "Resultado da Divisão (inteira): $resultado"
	fi
	;;

 5)  
  echo "Saindo"
  ;;
 *)
  echo "Opção inválida! Escolha um número entre 1 e 5."
  ;;

esac
