#! /bin/bash

#MENÚ DE LAS DIFERENTES OPCIONES PARA GESTIONAR MÁQUINAS VIRTUALES

OPCIONES=('Crear MV' 'Listar MMVV' 'Mostrar' 'info MV' 'Crear controladora SATA' 'Crear vdi' 'Acoplar vdi' 'Listar vdi' 'Salir');

PS3="¿QUÉ QUIERES HACER?: ";

select item in "${OPCIONES[@]}"
do
	case $REPLY in
		1)	./crearmv.sh
			;;
		2)	./lsmv.sh
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
		9)	echo "Saliendo..."
			exit
			;;
		*)	echo "Opción no válida";
			exit
			;;
	esac
done

exit;
