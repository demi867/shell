#!/bin/bash
N=1
echo -e "\e[1;42m Cleaning up your mess..\e[0m"

(sudo apt-get update)
(sudo apt autoremove)
(sudo apt autoclean)
(sudo updatedb)

echo -e "\e[1;31m All done!\e[0m"
echo -e "\e[1;31m SanDemio \e[0m"

