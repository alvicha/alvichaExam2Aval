 #!/bin/bash
lineas=`cat consumos.txt | wc -l`
suma=0
for i in `seq 2 $lineas`
do
   ciudad=`cat consumos.txt | awk '{print $1}' | head -n$i | tail -n1`
   mes=`cat consumos.txt | awk '{print $2}' | head -n$i | tail -n1`
   anyo=`cat consumos.txt | awk '{print $3}' | head -n$i | tail -n1`
   consumos=`cat consumos.txt | awk '{print $4}' | head -n$i | tail -n1`
   if [ $consumos -eq 987 ]
   then
   echo "La ciudad $ciudad $mes $anyo con consumo $consumos es la máxima".
   else
   if [ $consumos -eq 189 ]
   then
   echo "La ciudad $ciudad $mes $anyo con consumo $consumos es la mínima". 
   fi
   fi
done