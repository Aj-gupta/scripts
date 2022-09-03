#!/bin/bash
# Color variables
red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
blue='\033[0;34m'
magenta='\033[0;35m'
cyan='\033[0;36m'
# Clear the color after that
clear='\033[0m'
if npm run format ; then
    printf "\n${green}formatting success${clear}\n"
        if npm run lint ; then
                printf "${green}linting success${green}\n"
        else
                printf "\n${red}commit failed due to linting${clear}"
                exit 1
        fi
else
    printf "\n\n${red}commit failed due to formatting${clear}"
    exit 1
fi
