#! /bin/bash -x


#SCRIPT PARA CREAR UNA MV CON DIFERENTES OPCIONES PREESTABLECIDAS

NOMBRE='';
OS='';
MEMORIA=1024;

while [[ $NOMBRE == '' ]] ;
do
	read -p "Elige un nombre --> " NOMBRE;
done

PS3="Elige sistema operativo --> ";

select item in "Debian_64" "Ubuntu_64" "Otro"
do
	case "$REPLAY" in
		1)	SO="Debian_64";
			break
			;;
		2)	SO="Ubuntu_64";
			break
			;;
		3)	while [[ $OS == '' ]] ;
			do
				read -p "Elige un Sistema Operativo --> " OS;
			done;
			break
			;;
	esac
done

read -p "Memoria RAM en Mb (Por defecto serán 1024) --> " MEMORIA;

echo "nombre" NOMBRE;
echo "OS" OS;
echo "Memoria" MEMORIA;
