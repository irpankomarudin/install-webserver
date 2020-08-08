#!/bin/bash
jawaban="Y“

read -p "Lanjutkan Install webserver ? (Y/n) " pilih;

if [ $pilih == $jawaban ]; 
then    
	echo "Menyiapkan Installasi Web server"
	echo "Melakukan Update"  
	sudo apt-get update    
	echo "Melakukan Installasi Webserver"    
	sudo apt-get install -y apache2 php php-mysql    
	echo "Melakukan Installasi Database Server"    
	sudo apt-get install -y mysql-server    
	echo "Installasi Selesai"
	echo "Versi Php adalah:"
	php -v
	echo "Versi MySQL"
	myql -v   
	exit 0 
else    
	echo "Installasi dibatalkan"    
	exit 1 
fi