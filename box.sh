#!/bin/bash

box() {
    read -p '[*] tus datos son: ' chain
    chains=${#chain}
    line='-'
    sideBar='|'
    for ((i = 0; i < ${chains} + 1; i++)); do
        printf "%s"$line
    done
    printf $line
    printf "\n|$chain|\n"
    printf $line
    for ((i = 0; i < ${chains} + 1; i++)); do
        printf "%s"$line
    done
}
box >box.txt
cat box.txt | grep "^-\|$" | tr ' ' "|"
# awk '{print $1 "|" $2 "|" $3 "|" $4}'

# if [[ $chain -eq  ]]; then

# fi
# clear

# # Solicitamos los datos al usuario:
# echo -n "¿Cuánto asteriscos por lado quieres? => "
# read m

# asteriscos() {
#   # En esta función hemos definido un bucle para que itere
#   # desde el 0 a $1, siendo $1 el argumento de la función:
#   for (( a = 0; a < $1; a++ )); do
#     echo -n "* " # Se rellenan de asteriscos solo en una línea
#   done

#   # Al finalizar el bucle, realizamos un saldo de línea:
#   echo ""
# }
# espacios() {
#   for (( b = 1; b <= $1; b++ )); do
#     if [[ $b == 1 || $b == $1 ]]; then
#       echo -n "* " # Se colocará asteriscos en la primera y última iteración.
#     else
#       echo -n "  " # De lo contrario, se rellenarán de espacios en blanco.
#     fi
#   done

#   # Salto de línea:
#   echo ""
# }
# escribir() {
#   # Se evalúan sus argumentos para determinar cuándo
#   # es conveniente llamar a la función «asteriscos» o
#   # «espacios» en función de un contexto dado:
#   if [[ $1 == 1 || $1 == $2 ]]; then
#     asteriscos $2
#   else
#     espacios $2
#   fi
# }
# for (( i = 1; i <= $m; i++ )); do
#   # Donde $i es el iterador del bucle y $m
#   # el número ingresado por el usuario:
#   escribir $i $m
# done
