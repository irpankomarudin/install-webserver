#!/bin/bash
jawaban="Y"
read -p "Lanjutkan Setup Web Wordpress? (Y/n) " pilih;
if [ $pilih == $jawaban ]; 
then
    echo "=============================>"
    echo "Downloading Data"
    echo "=============================>"
    cd
    wget https://github.com/irpankomarudin/wordpress/archive/master.zip
    echo "Mengekstrak File"
    echo "=============================>"
    unzip master.zip
	sudo rm master.zip
    echo "=============================>"
    echo "Memindahkan data"
    echo "=============================>"
    sudo mkdir /var/www/html/wordpress
    sudo mv wordpress-master/* /var/www/html/wordpress
    echo "Setup selesai"
    exit 0
else
    echo "Setup dibatalkan"
    exit 1
fi