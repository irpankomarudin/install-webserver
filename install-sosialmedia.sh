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
	sudo rm master.zip
    echo "=============================>"
    echo "Memindahkan data"
    echo "=============================>"
    sudo mkdir /var/www/html/sosial-media
    sudo mv sosial-media-master/* /var/www/html/sosial-media
    echo "Setup selesai"
    exit 0
else
    echo "Setup dibatalkan"
    exit 1
fi