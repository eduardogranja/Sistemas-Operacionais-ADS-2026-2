#!/bin/bash

echo "Informações do Kernel"
echo "---------------------"
echo "Sistema Operacional: $(uname -o)"
echo "Nome do Host:        $(uname -n)"
echo "Versão do Kernel:    $(uname -r)"
echo "Arquitetura:         $(uname -m)"
echo "---------------------"
echo "String Completa (uname -a):"
uname -a
