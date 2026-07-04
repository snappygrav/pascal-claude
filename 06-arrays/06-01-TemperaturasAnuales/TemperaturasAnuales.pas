{
FASE 4: EJERCICIO INTERMEDIO
Ejercicio 19: Temperaturas mensuales con validación
Ahora vamos a subir la complejidad incorporando validación de datos.

Enunciado:
Crea un programa llamado TemperaturasAnuales que:

Almacene las temperaturas promedio de los 12 meses del año (usa índices 1..12 para representar enero=1, febrero=2, etc.)
Solicite al usuario que ingrese las 12 temperaturas (en grados Celsius)
Valide cada temperatura ingresada:

Debe estar entre -50°C y 50°C (rango razonable para temperaturas terrestres)
Si el usuario ingresa un valor fuera de rango, debe pedir el dato nuevamente hasta que sea válido


Calcule y muestre:

La temperatura más alta y en qué mes ocurrió
La temperatura más baja y en qué mes ocurrió
El promedio anual de temperatura

Ejemplo de ejecución:
=== REGISTRO DE TEMPERATURAS ANUALES ===

Mes 1 (Enero): 25
Mes 2 (Febrero): 28
Mes 3 (Marzo): 100
Error: temperatura fuera de rango [-50, 50]
Mes 3 (Marzo): 27
Mes 4 (Abril): 22
...
Mes 12 (Diciembre): 26

=== ANÁLISIS ===
Temperatura más alta: 32°C en Julio (mes 7)
Temperatura más baja: 18°C en Mayo (mes 5)
Promedio anual: 25.33°C

Pistas conceptuales (sin código):
Para la validación:

Necesitás un bucle que se repita mientras la temperatura sea inválida
¿Qué tipo de bucle es mejor para "repetir hasta que el dato sea válido"?

Para encontrar máximo/mínimo:

Necesitás dos variables: tempMaxima y tempMinima
¿Con qué valor las inicializás? (Pista: con el primer elemento del array)
Recorrés el array comparando cada elemento con el máximo/mínimo actual
También necesitás guardar el mes donde ocurrió cada uno

Para el promedio:

Similar al ejercicio anterior (acumulador + división)

Desafío adicional opcional:
Si querés ir más allá, podés mostrar los nombres de los meses en vez de números:
Temperatura más alta: 32°C en Julio
Para esto necesitarías otro array de strings con los nombres:
pascalconst
    MESES: array[1..12] of string = ('Enero', 'Febrero', 'Marzo', ...);
Pero esto es opcional. Podés simplemente mostrar el número del mes.

}

program TemperaturasAnuales;
uses crt;

const
  CANT_MESES = 12;
  MIN_TEMP = -50.0;
  MAX_TEMP = 50.0;

type
  TMeses = 1..CANT_MESES;
  TTemperaturas = array[TMeses] of real;

var
  temperaturas : TTemperaturas; //Acá se almacenan todas las temperaturas y luego lo usamos para calcular el promedio dividido CANT_MESES.
  i, mesCaluroso, mesFrio : integer; //mesCaluroso y mesFrio van a almacenar los meses con mayor y menor temperatura de todos.
  temp, promedio, maxTemp, minTemp : real;

begin

  writeln('REGISTRO DE TEMPERATURAS MENSUALES');
  writeln('==================================');

  for i := 1 to CANT_MESES do
    begin
    repeat 
      write('Ingrese la temperatura del mes ', i, ':');
      readln(temperaturas[i]);
      if (temperaturas[i] > MAX_TEMP) or (temperaturas[i] < MIN_TEMP) then
        writeln('Por favor ingrese una teperatura válida entre 50ºC y -50ºC')
    
    until (temperaturas[i] <= MAX_TEMP) and (temperaturas[i] >= MIN_TEMP);
    
    {promedio := ;}
    end;
    
  
  maxTemp := temperaturas[1];
  minTemp := temperaturas[1];
  mesCaluroso := 1;
  mesFrio := 1;

  for i := 2 to CANT_MESES do
    if temperaturas[i] > maxTemp then
    begin
        maxTemp := temperaturas[i];
        mesCaluroso := i;
    end
    else if temperaturas[i] < minTemp then
      begin
        minTemp := temperaturas[i];
        mesFrio := i;
      end;

  
writeln('El mes más caluroso fue el mes ', mesCaluroso, ' con ', maxTemp:0:2, ' grados.');
writeln('El mes más frio fue el mes ', mesFrio, ' con ', minTemp:0:2, ' grados.');

end.