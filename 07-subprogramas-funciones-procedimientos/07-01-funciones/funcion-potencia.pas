function potencia(base : real; exponente : integer) : real;
(* pre condición : (base <> 0) or (exponente <> 0) *) { ese comentario que aclara la pre condición se va a poner siempre para indicar lo que se debe controlar de forma previa a la función }

var 
    pot : real;
    i : integer;
    negativo : boolean;

begin
    negativo:= exponente < 0;
    exponente:= abs(exponente);
    pot:= 1;
    for i := 1 to exponente do
        pot := pot * base;
    
    if negativo then
        potencia := 1 / pot { esta instrucción en donde usamos el nombre de la función como si fuera el nombre de una variable, debemos hacerlo al final de la función para devolver el resultado hacia quien haya hecho la invocación de dicha función. Es decir, usamos el nombre de la función al final de todo para que el valor obtenido sea devuelto al "mundo externo". }
    else
        potencia := pot; { idem lo de arriba }
end;

{ las variables que tenemos declaradas acá, únicamente viven dentro de esta función. }
 
{ si dentro de otra función o procedimiento hay variables que tengan el mismo nombre que otra variable local en otro subprograma, no importa, porque son independientes por más que se llamen igual. }

{ 
Dentro de la función potencia, tenemos tres variables.

En la variable pot vamos a acumular el resultado de manera interna.
Un contador llamado i, para variable de control de un For.
Una variable booleana para darle vuelta el signo en caso de que venga negativo.

}