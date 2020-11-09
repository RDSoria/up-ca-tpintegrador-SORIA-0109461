#!/bin/bash
echo "1. Fibonacci: Ingrese el nro de terminos a mostrar"
read N

echo "Lista de los $N primeros terminos:"
n_2=1
n_1=1
echo ${n_2}
echo ${n_1}
i=3
while [ ${i} -le ${N} ]; do
n=$((${n_2} + ${n_1}))
n_2=${n_1}
n_1=${n}
echo ${n}
i=$((${i}+1))
done

echo "2. Ingresar un nro. entero:"
read n
c=0
while [ $n -gt 0 ]; do
a=`expr $n % 10 `
n=`expr $n / 10 `
c=`expr $c \* 10 + $a`
done
echo $c
echo "3. Ingresar un texto: " 
read cadena
reverse=$(echo $cadena | rev)
if [[ "$cadena" == "$reverse" ]]; then
    echo "Es un palindromo"
else
    echo "No es un palindromo"
fi
