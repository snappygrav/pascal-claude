Búsqueda en arreglos
para hacer una búsqueda no es correcto usar un for (aunque funcione), porque una vez que encuentra lo que se necesita, va a seguir iterando

lo correcto es usar una estructura de repetición condicional (while) para detener la búsqueda en el momento que se satisface la condición deseada.
Ejemplo:
i := `PRIMERO`;
while (i <= `ULTIMO`) and not cumple_condicion(a[i]) do
    i:= siguiente(i);

es una doble condición con un and en medio y haremos una evaluación por circuito corto mediante Pascal
el valor 'siguiente' dependerá del contexto 

