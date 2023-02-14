#!/bin/bash

read -p "Introduce una ciudad: " ciudad

lineas=`cat consumos.txt | tail -n+2 | wc -l`
nombresCiudades=`cat consumos.txt | grep $ciudad`
suma=0;

for i in `seq 1 $lineas`
do
    nombreCiudad=`cat consumos.txt | awk '{print $1}' | head -$i | tail -n1`
    consumo=`cat consumos.txt | awk '{print $4}' | head -$i | tail -n1`
    if [ $ciudad = $nombreCiudad ]
    then
    suma=$((suma+consumo))
    fi
done
echo "El total es $suma"