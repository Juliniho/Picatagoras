#! /bin/bash
clear
echo "hola"
echo "=======================================" 
nombre=Perico
apellidos=Palotes
echo "Te llamas" $nombre $apellidos
echo "======================================="
fecha=`date`
fecha1=`date | cut -d " " -f 1,2`
hora=`date | cut -d " " -f 4`
echo $fecha 
echo $fecha1
echo $hora
echo "======================================="
# IFS es una variable de entorno que determina el delimitador de campos
# (que por defecto vale “ ”),en este script queremos
# cambiarlo a “,” para escribir por teclado nombre,apellidos
IFS=","
read -p "introduce  nombre,apellido: " nombre apellido
echo "eres: " $nombre $apellido
echo "======================================="
echo "condicional"
#  comprobar direcctorio
if `cd /home/juan/Escritorio/scritpShell
 >/dev/null`
then
echo "si,es un direcctorio y contiene: "
ls
else
echo "no es un direcctorio"
fi
echo "======================================="
# comprobar si un usuario existe, grep busca dentro de los archivos
# no acaba de funcionar del todo
read -p " introduce el usuario: " user
read -p " introduce el grupo: " group
if `grep -e "^$user:.*" /etc/passwd >/dev/null`
	then
	if `grep -e "^$group:.*" /etc/group >/dev/null`
	   then 
	   echo "usuario y grupo existe"
       	else
	   echo "Solo el usuario existe"
	fi	
elif `grep -e "^group:.*" /etc/group >/dev/null`
	then
	echo "Usuario no existe, pero el grupo si"
else
	echo "no existe nada"
fi
echo "============================================="
echo "condicional case"
read -p "introduce 1 tecla" tecla
case $tecla in
[a-z,A-Z]) echo "es una tecla";;
[0-9]) echo "es un numero";;
*) echo "es un simbolo";;
esac
