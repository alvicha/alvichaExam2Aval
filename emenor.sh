#!/bin/bash
lineas=`cat consumos.txt | wc -l`
min=0;
sumaTotal=0;
for i in `seq 1 $lineas`
do
    nombreCiudad=`cat consumos.txt | awk '{print $1}' | head -$i | tail -n1`
    consumo=`cat consumos.txt | awk '{print $4}' | head -$i | tail -n1`
    sumaTotal=$((sumaTotal+media))
    promedio=$((sumaTotal/$lineas))
    if (( ( $promedio < min ) ))
    then
    min=$promedio
    echo "La ciudad $nombreCiudad es el que tiene la media de consumos menor."
    fi
done

