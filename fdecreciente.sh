#!/bin/bash
lineas=`cat consumos.txt | wc -l`
min=0;
for i in `seq 1 $lineas`
do
    nombreCiudad=`cat consumos.txt | awk '{print $1}' | head -$i | tail -n1`
    consumo=`cat consumos.txt | awk '{print $4}' | head -$i | tail -n1`
    sumaTotal=$((sumaTotal+media))
    promedio=$((sumaTotal/$lineas))
    for i in lunes martes miercoles jueves viernes sabado domingo 
            do
                cont=$((cont + 1))
                if [ $cont -eq $numDia ]
                then
                echo "El $i no llovió"
             fi
            done
done