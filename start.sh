#!/bin/bash
#https://github.com/MinerAle00/proxmox-utility
# Credits : MinerAle, PellinD, Federico La Morgia

# Scopo dello script : installare una serie di tools



show_menu(){
    normal=`echo "\033[m"`
    menu=`echo "\033[36m"` #Blue
    number=`echo "\033[33m"` #yellow
    bgred=`echo "\033[41m"`
    fgred=`echo "\033[31m"`
    printf "\n${menu}*********************************************${normal}\n"
    printf "Questo script è stato realizzato da MinerAle, PellinD e da FedericoLM${normal}\n"
    printf "${menu}**${number} 1)${menu} Installare Phoronix Test Suite ${normal}\n"
    printf "${menu}**${number} 2)${menu} TODO ${normal}\n"
    printf "${menu}**${number} 3)${menu} TODO ${normal}\n"
    printf "${menu}**${number} 4)${menu} TODO ${normal}\n"
    printf "${menu}**${number} 5)${menu} TODO${normal}\n"
    printf "${menu}*********************************************${normal}\n"
    printf "Please enter a menu option and enter or ${fgred}x to exit. ${normal}"
    read opt
}

option_picked(){
    msgcolor=`echo "\033[01;31m"` # bold red
    normal=`echo "\033[00;00m"` # normal white
    message=${@:-"${normal}Error: No message passed"}
    printf "${msgcolor}${message}${normal}\n"
}

clear
show_menu
while [ $opt != '' ]
    do
    if [ $opt = '' ]; then
      exit;
    else
      case $opt in
        1) clear;
            option_picked "Installazione di Phoronix Test Suite selezionata";
            sudo apt install gdebi wget ;
            wget https://phoronix-test-suite.com/releases/repo/pts.debian/files/phoronix-test-suite_10.8.4_all.deb ;
            sudo gdebi phoronix-test-suite_10.8.4_all.deb ;
            printf "Installazione di Phoronix Test Suite";
            show_menu;
        ;;
        2) clear;
            option_picked "Opzione 2 selezionata";
            printf "TODO";
            show_menu;
        ;;
        3) clear;
            option_picked "Opzione 3 selezionata";
            printf "TODO";
            show_menu;
        ;;
        4) clear;
            option_picked "Opzione 4 selezionata";
            printf "TODO";
            show_menu;
        ;;
        x)exit;
        ;;
        \n)exit;
        ;;
        *)clear;
            option_picked "Seleziona una opzione dal menu";
            show_menu;
        ;;
      esac
    fi
done


