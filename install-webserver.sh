#!/bin/bash
jawaban="Y"

read -p "Lanjutkan Install webserver ? (Y/n)" pilih;

if [ $pilih == $jawaban ]; 
then    
        echo "Menyiapkan Installasi Web server"
        echo "Melakukan Update"  
        sudo apt-get update
        sudo apt-get upgrade
        echo "Melakukan Installasi Webserver"
        sudo apt install software-properties-common
        sudo add-apt-repository ppa:ondrej/php
        sudo apt-get update
        sudo apt-get upgrade
        sudo apt-get install -y apache2 php7.4 php7.4-mysql    
        echo "Melakukan Installasi Database Server"    
        sudo apt-get install -y mysql-server    
        echo "Installasi Selesai"
        echo "Versi Php adalah:"
        php -v
        echo "Versi MySQL"
        mysql -V  
        exit 0 
else    
        echo "Installasi dibatalkan"    
        exit 1 
fi