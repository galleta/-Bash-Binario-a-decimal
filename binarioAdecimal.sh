#!/bin/bash

# ************************************************************************
# * Programa que calcula el equivalente a un número en binario a decimal *
# * Al programa se le pasa cifra binaria por parámetro                   *
# * Autor: Francis                                                       *
# * Ejemplo de uso: . binarioAdecimal.sh 1 0 0 1 1 0 1                   *
# ************************************************************************

numerobinario=$*
totalparametros=$#
numero=0

for((i=1; i <= totalparametros; i++))
do
	exponente=`expr $totalparametros - $i`
	let potencia=`expr 2**$exponente`
	numero=`expr $numero + $1 \* $potencia`
	shift
done

echo "PID del shell: $$"
echo "El numero $numerobinario en decimal es $numero"
