#! /bin/bash


#SCRIPT PARA CREAR UNA MV CON DIFERENTES OPCIONES PREESTABLECIDAS

NOMBRE='';
SO='';
MEMORIA=1024;

while [[ $NOMBRE == '' ]] ;
do
	read -p "Elige un nombre --> " NOMBRE;
done

PS3="Elige sistema operativo --> ";

select item in "Debian_64" "Ubuntu_64" "RedHat_64" "Otro_64"
do
	case SO=$item;
	break;
done

read -p "Memoria RAM en Mb (Por defecto serán 1024) --> " MEMORIA;

echo "nombre" $NOMBRE;
echo "SO" $SO;
echo "Memoria" $MEMORIA;
