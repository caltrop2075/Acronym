#!/usr/bin/bash
#------------------------------------------------------------------------------#
#                            Programmed By Liz                                 #
#------------------------------------------------------------------------------#
# acronym expansion
# 'fold' & 'fmt' escape color codes are counted causing uneven margins
# escape color is not to be used when using formatting utilities

clear

WHT="\033[1;37m"
Wht="\033[0;37m"
non="\033[0m"
fil="$HOME/data/acro-sub.txt"          # text with acronymns
dat="$HOME/data/acro-sub.dat"          # acronym expansion data

title-80.sh -t line "Acronym Expansion Using AWK\ninput:\$HOME${fil#$HOME}\nacronym:\$HOME${dat#$HOME}"
echo -e "${Wht}ORIGINAL DATA${non}"
cat $fil | fold -sw 80
echo -e "\n${Wht}ACRONYM EXPANSION${non}"
cat $fil | acro-sub.awk | fold -sw 80
