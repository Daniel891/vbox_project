#! /bin/bash

#MENÚ DE LAS DIFERENTES OPCIONES PARA GESTIONAR MÁQUINAS VIRTUALES

OPCIONES=('Crear MV' 'Eliminar MV' 'Mostrar info MV' 'Crear controladora SATA' 'Crear vdi' 'Acoplar vdi' 'Salir');
PS3="¿QUÉ QUIERES HACER?: ";

echo "Máquinas virtuales existentes:";
vboxmanage list vms;
echo " ";

select item in "${OPCIONES[@]}"
do
	case $REPLY in
		1)	./crearmv.sh;
			break
			;;
		2)	./borrarmv.sh;
			break
			;;
		3)	./infovm.sh;
			break
			;;
		4)	./crearsata.sh;
			break
			;;
		5)	./crearvdi.sh;
			break
			;;
		6)	./acoplarvdi.sh;
			break
			;;
		7)	echo "Saliendo...";
			break
			;;
		*)	echo "Opción no válida"
			;;
	esac
done
