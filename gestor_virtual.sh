#! /bin/bash

#MENÚ DE LAS DIFERENTES OPCIONES PARA GESTIONAR MÁQUINAS VIRTUALES

OPCIONES=('Crear MV' 'Listar MMVV' 'Mostrar' 'info MV' 'Crear controladora SATA' 'Crear vdi' 'Acoplar vdi' 'Listar vdi' 'Salir');

PS3="¿QUÉ QUIERES HACER?: ";

select item in "${OPCIONES[@]}"
do
	case $REPLY in
		1)	./crearmv.sh;
			break
			;;
		2)	vboxmanage list vms;
			break
			;;
		3)	./crearsata.sh
			;;
		4)	
			;;
		5)	
			;;
		6)
			;;
		7)
			;;
		8)
			;;
		9)	echo "Saliendo...";
			break
			;;
		*)	echo "Opción no válida"
			;;
	esac
done
