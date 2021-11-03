#!/bin/bash
#colours
redColour="\e[0;31m\033[1m"
endColour="\033[0m\e[0m"
greenColour="\e[0;32m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"

echo -e "${redColour}[*] enter the specifications of your table ${endColour}"

box() {
    read chain
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
