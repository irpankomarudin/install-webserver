#!/bin/bash
jawaban="Y"
read -p "Apakah kamu yakin akan melakukan setup Web Landing Page ? (Y/n) " pilih;
if [ $pilih == $jawaban ]; 
then
    echo "=============================>"
    echo "Downloading Data"
    echo "=============================>"
    cd
    wget https://github.com/sdcilsy/landing-page
    echo "=============================>"
    echo "Ekstrak File"
    echo "=============================>"
    unzip landing-page.zip
    echo "=============================>"
    echo "Memindahkan data"
    echo "=============================>"
	mkdir /var/www/html/landing-page
    sudo mv landing-page/* /var/www/html/landing-page
    echo "Setup selesai"
    exit 0
else
    echo "Setup dibatalkan"
    exit 1
fi
