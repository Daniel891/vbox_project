#! /bin/bash

#SCRIPT PARA CREAR UNA CONTROLADORA SATA VIRTUAL

FLAG="false";
NOMBRE='';

echo " ";

while [[ $FLAG == "false" ]] ;
do
	read -p "¿A que MV quieres añadirle una controladora? --> " MV;
	if [[ -n $(vboxmanage list vms | grep -w $MV) ]] ;
	then 
		FLAG="true";
	else echo "Esa máquina no existe";
	fi;
done

while [[ $NOMBRE == '' ]] ;
do
	read -p "Elige un nombre para la controladora nueva--> " NOMBRE;
done


