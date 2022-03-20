#! /bin/bash


#SCRIPT PARA CREAR UNA MV CON DIFERENTES OPCIONES PREESTABLECIDAS

NOMBRE='';
SO='';
MEMORIA='';

while [[ $NOMBRE == '' ]] ;
do
	read -p "Elige un nombre --> " NOMBRE;
done

echo " ";
echo "Elige Sistema Operativo";

PS3="--> ";

select item in "Debian_64" "Ubuntu_64" "RedHat_64" "Otro_64"
do
	case $REPLY in 
	1 | 2 | 3 | 4)	SO=$item;
			break
			;;
	*)	echo "Opción no válida"
		;;
	esac
done

echo " ";

until [[ $MEMORIA == +([[:digit:]]) ]] && [ $MEMORIA -ge 1024 ] ;
do
	read -p "Memoria RAM en Mb (Mínimo 1024) --> " MEMORIA;
done

echo " ";
echo "... Creando máquina virtual ...";

VBoxManage createvm --name $NOMBRE --ostype $SO --register;
sleep 2;
VBoxManage modifyvm $NOMBRE --memory $MEMORIA

echo " ";
echo "Creada MV de tipo $SO llamada $NOMBRE, con $MEMORIA Mb de RAM";
