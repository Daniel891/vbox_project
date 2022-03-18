#! /bin/bash


#SCRIPT PARA CREAR UNA MV CON DIFERENTES OPCIONES PREESTABLECIDAS

NOMBRE='';

while [[ $NOMBRE == '' ]] ;
do
	read -p "Elige un nombre --> " NOMBRE;
done
