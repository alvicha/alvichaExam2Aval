#!/bin/bash
lineas=`cat consumos.txt | wc -l`
suma=0;

for i in `seq 1 $lineas`
do
    nombreCiudad=`cat consumos.txt | awk '{print $1}' | head -$i | tail -n1`
    consumo=`cat consumos.txt | awk '{print $4}' | head -$i | tail -n1`
    if [ $nombreCiudad = $1 ]
    then
    suma=$((suma+consumo))
    fi
done
echo "El total es $suma"
promedio=$((suma/$lineas))
echo "La media del modulo $1 es $promedio"

if [ $promedio -lt 400 ]
then
echo "ECO";
else
if [ $promedio -gt 400 ]
then
echo "NO ECO"
fi
fi