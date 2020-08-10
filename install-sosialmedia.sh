#!/bin/bash
jawaban="Y"
read -p "Lanjutkan Setup Web Sosial Media ? (Y/n) " pilih;
if [ $pilih == $jawaban ]; 
then
    echo "=============================>"
    echo "Downloading Data"
    echo "=============================>"
    cd
    wget https://github.com/sdcilsy/sosial-media/archive/master.zip
    echo "=============================>"
    echo "Mengekstrak File"
    echo "=============================>"
    unzip master.zip
    echo "=============================>"
    echo "Memindahkan data"
    echo "=============================>"
    sudo mkdir /var/www/html/landing-page
    sudo mv sosial-media-master/* /var/www/html/landing-page
    echo "Setup selesai"
    exit 0
else
    echo "Setup dibatalkan"
    exit 1
fi