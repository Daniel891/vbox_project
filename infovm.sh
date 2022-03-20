#! /bin/bash

#SCRIPT PARA LISTAR LA MV QUE ESCOJAS

FLAG="false";

echo " ";

while [[ $FLAG == "false" ]] ;
do
	read -p "¿De que MV quieres ver información? --> " MV;
	if [[ -n $(vboxmanage list vms | grep -w $MV) ]] ;
	then 
		FLAG="true";
	else echo "Esa máquina no existe";
	fi;
done

echo " ";
vboxmanage showvminfo $MV | less;
