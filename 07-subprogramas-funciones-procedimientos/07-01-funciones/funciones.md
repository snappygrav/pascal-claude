Una función es un subprograma que retorna un valor simple.
Lo que vamos a devolver como resultado de la función no puede pertenecer a un tipo de datos estructurado (arreglos, registros). Por ende tiene que retornar un char, bool, integer, real, subrango, etc.
Representa el mismo concepto que una función matemática.
La función parte de un dominio y llega a un codominio.
Por cada valor del dominio, produce 1 valor de codominio como resultado.

Las funciones se invocan dentro de una expresión.
<!-- ejemplos
y := sqrt(x);
z := sqrt(25) + sqrt(5);
 -->

Funciones estándar: ord, succ, pred, sqrt, chr, trunc, etc.

Funciones definidas por el programador: se declaran en el programa luego de la declaración de variables.

SINTAXIS:
function nombre (lista_de_parametros) : tipo; <!-- se pone el tipo del resultado que va a devolver la función integer, real, etc. -->
const
    ...
type
    ...
var
    ...
(*subprogramas*)
...
begin
    ...
end;

Las instrucciones que coloquemos tienen como propósito final calcular un resultado para devolver a la expresión desde donde llamé a la función.

