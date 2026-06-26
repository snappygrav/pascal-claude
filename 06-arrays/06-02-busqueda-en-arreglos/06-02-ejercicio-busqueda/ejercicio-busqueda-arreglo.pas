{ 
Ejercicio de búsqueda en arreglos:

Escribir un programa Ordenado que determine si los elementos del arreglo están ordenados de manera ascendente (estrictamente ascendente) e imprima una salida con un mensaje indicando el resultado.
Hay que inicializar el arreglo desde la entrada estandar.

 }

 CONST N = 5; { indico el tamaño máximo del arreglo en 5 para que no sea tan largo }

 TYPE
    RangoN = 1..N;
    Tabla = Array[RangoN] of Integer;

VAR
    arreglo: Tabla;
    i: RangoN;

BEGIN

    for i := 1 to N do
    begin
        writeln('Ingrese el valor ', i);
        readln(arreglo[i]);
    end;

    i:=1;
    while (i < N) and (arreglo[i] < arreglo[i+1]) do
        i:= i+1;

    if i = N then
        writeln('El arreglo esta ordenado de manera estrictamente ascendente.')
    else
        writeln('El arreglo NO esta ordenado de manera estrictamente ascendente.');
        
    
END.