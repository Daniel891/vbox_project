#! /bin/bash

#SCRIPT PARA MOSTRAR LAS MV EXISTENTES E INTRODUCIR EL NOMBRE DE UNA PARA BORRARLA

FLAG="false";

echo " ";
echo "Máquinas virtuales existentes:";
vboxmanage list vms;
echo " ";

while [[ $FLAG == "false" ]] ;
do
	read -p "Introduce un nombre para borrar la MV --> " MV;
	if [[ -n $(vboxmanage list vms | grep -w $MV) ]] ;
	then 
		FLAG="true";
	else echo "Esa máquina no existe";
	fi;
done

echo " ";
vboxmanage unregistervm $MV --delete;
echo "Máquina eliminada";
