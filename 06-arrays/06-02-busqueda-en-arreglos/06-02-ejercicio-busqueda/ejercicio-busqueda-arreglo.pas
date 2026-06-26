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

{ acá iteramos con bucle for para el ingreso de datos mediante la entrada estandar }
    for i := 1 to N do
    begin
        writeln('Ingrese el valor ', i);
        readln(arreglo[i]);
    end;

{ asignamos el valor 1 a la variable i para inicializarla y dejarla pronta para usar en el while como contador

en el while se van a evaluar 2 condiciones, una que en principio siempre será verdadera, que va a ser la de (i<N) y la segunda que es la que hará que se corte el while o no.

el tema es que para que lo anterior tenga algún efecto, debemos evaluar nuevamente una condición y es si i llegó a alcanzar el valor de N, porque de esta forma sabremos si el bucle while cortó antes o llegó a terminarse, que si se cumplió esto último, nos indica que se ingresaron en orden ascendente los números en la entrada estandar

a su vez en esa evaluación de condición mediante el if indicamos que si i=N entonces el arreglo está ordenado de manera ascendente y sino (else), mostramos un mensaje que diga que no está ordenado ascendentemente
 }
    i:=1;
    while (i < N) and (arreglo[i] < arreglo[i+1]) do
        i:= i+1;

    if i = N then
        writeln('El arreglo esta ordenado de manera estrictamente ascendente.')
    else
        writeln('El arreglo NO esta ordenado de manera estrictamente ascendente.');
        
    
END.