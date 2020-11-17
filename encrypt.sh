#!/bin/bash
if [ $(id -u) -ne 0 ]; then
        echo -e "\e[1;31m Are you root? \e[0m"
        exit 1
fi

N=1
echo -e "\e[1;31m Let's encrypt file \e[0m"
(openssl genrsa -des3 -out private.key)
(openssl rsa -in private.key -pubout -out public.key)
read -p "Enter file path for encryption :" file_path
(openssl rsautl -encrypt -pubin -inkey public.key -in "$file_path" -out "$file_path") ;
(diff "$file_path" "$file_path") ; echo -e "\e[1;31m If there is no output, then success!\e[0m"

echo -e "\e[1;31m SanDemio \e[0m"
