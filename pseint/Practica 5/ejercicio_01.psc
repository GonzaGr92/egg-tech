//Defino un funcion que recibe dos numeros como parametro.
//Ambos paramtros se reciben por referencia, esto signfica que si cambia el valor dentro de la funcion,
//cambia tambien en el proceso principal.
Funcion intercambiarNumeros(primerNro Por Referencia, segundoNro Por Referencia)
	aux = primerNro
	primerNro = segundoNro
	segundoNro = aux
Fin Funcion


//Proceso principal, aca es donde empieza la ejecucion del programa
Algoritmo ejercicio_01
	//Pido los dos numero al usuario
	Definir primerNro como entero
	Definir segundoNro como entero
	Escribir "Ingrese el primer numero"
	Leer primerNro
	Escribir "Ingrese el segundo numero"
	Leer segundoNro
	
	//Llamo al funcion de intercambio
	intercambiarNumeros(primerNro, segundoNro)
	
	//Muestro los resultados
	Escribir "El primer numero es ", primerNro
	Escribir "El segundo numero es ", segundoNro

FinAlgoritmo
