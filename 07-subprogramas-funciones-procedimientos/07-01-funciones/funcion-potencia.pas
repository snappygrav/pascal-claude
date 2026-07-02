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
        potencia := 1 / pot
    else
        potencia := pot;
end;

{ las variables que tenemos declaradas acá, únicamente viven dentro de esta función. }

{ seguir viendo en minuto 44:13 }