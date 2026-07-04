Ahora que tenemos códigos que se empiezan a hacer más largos, necesitamos modularizar los fragmentos de código para poder manejar todo de manera más sencilla y poder mantener dicho código.
La idea es que el programa se conforme de subprogramas y del bloque begin-end que será el programa principal. Esto hace al programa más mantenible, código legible y depurable.

Para ello vamos a estructurar el código de la siguiente manera:

PROGRAM nombre... <!-- pudiendo indicar input, output, o ninguno -->

CONST ... <!-- las constantes serán un valor que tendrán asignado un nombre simbólico, aquí no es necesario especificar el tipo de dato ya que pascal infiere qué tipo de dato es el que se almacena en la constante -->

TYPE... <!-- serán los tipos de datos que nosotros queramos definir según nuestra conveniencia en función el problema a resolver, podemos inventarnos nuestros tipos de datos. De momento tenemos los Arreglos y Subrangos, también están los Record, Punteros y otros -->

VAR... <!-- las variables que serán los espacios en memoria que almacenarán datos de manera temporal en relación a lo que necesitemos -->

FUNCTION... <!-- va a tener un encabezado, parámetros, y dentro de la función vamos a colocar lo mismo que colocaríamos dentro de un programa más grande. Podemos definir constantes y variables locales a esa función. Imita el mismo esqueleto del programa grande, pero encerrado en una "caja negra" -->

<!-- podemos poner tantos subprogramas como queramos (funciones o procedimientos) -->

PROCEDURE... <!-- tiene parámetros, variables, constantes, etc. -->

<!-- Dentro de una función o procedimiento se pueden anidar otras funciones y procedimientos, indistintamente (una función anidada en un procedimiento y viceversa) -->

BEGIN
END.
<!-- secuencia de instrucciones  -->


Un subprograma es un fragmento de código que se comporta de manera independiente dentro de un programa.
Se pueden invocar varias veces desde otras partes del programa.
Se comunican mediante el pasaje de parámetros.
Cada subprograma tiene su propio espacio de nombres (identificadores locales)
Algunos identificadores pueden ser compartidos entre subprogramas y el programa principal (identificadores globales).
Los subprogramas son una herramienta de modularización.


Un bloque es una denominación genérica de la siguiente estructura semántica:
const
    <declaración de constantes>

type
    <declaración de tipos>
var
    <declaración de variables>

<declaración de subprogramas>
begin
    <instrucciones>
end

<!-- no es tan común definir constantes o tipos específicos para un bloque, por lo general se hace de manera global -->

ENCABEZADOS
Todo bloque viene precedido de un encabezado.
Si el bloque es todo el programa, estará antecedido de la palabra PROGRAM identificador;
Si el bloque es un procedimiento, estará antecedido de la palabra procedure nombre(parámetros...);
Si el bloque es una función, estará antecedido de la palabra function(parámetros...) : tipo;

IR A VER 07-01-FUNCIONES Y 07-02-PROCEDIMIENTOS


PARÁMETROS NOMINALES Y EFECTIVOS
Los nominales son los nombres que aparecen en el encabezado de la función.

En la función potencia, tanto base como exponente son dos parámetros nominales.
function potencia(base: real; exponente: integer) : real;
En los nominales quedan cargados los valores de entrada que reciba la función. Para este caso son base y exponente.

Los parámetros efectivos son las expresiones que aparecen en la invocación de la función.
pot:= potencia(pi,23); <!-- en este caso pi y 23 son los parámetro efectivos, es decir, parámetro concretos que se le pasan a una función al ser llamada y luego se cargan en los parámetros nominales. -->
...
Writeln(potencia(2*pi*sqr(radio),N+2));

Los parámetros efectivos pueden ser valores constantes, variables o expresiones que sean de tipo compatible con los del cabezal.

Para cada parámetro, el tipo de parámetro nominal y el tipo del respectivo parámetro efectivo, deben ser compatibles.

Es una buena práctica definirse una variable en la cual uno puede preparar el resultado que desea devolver y luego al final de la función, utilizar a la derecha de la asignación el nombre de esa variable y a la izquierda el nombre de la función, para catapultar desde el bloque de la función, el resultado al lugar en donde fue invocada.

FUNCIONES BOOLEANAS
Son funciones que verifican la validez de una propiedad.
Ejemplo: búsqueda en un arreglo.

Puedo querer hacer una función que devuelva como resultado true o false.

type
    arreglo = array [0...N] of integer;

function pertenece(x : integer; A : arreglo) : boolean;
(* retorna true si x pertenece al arreglo *)
var
 i : integer;
begin
    i:= 1;
    (* evaluamos por circuito corto*)
    while (i <= N) and (A[i] <> x) do
        i:= i + 1;
    
    pertenece := i <= N;
end; (pertenece)