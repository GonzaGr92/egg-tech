Funcion leerLimites(minimo Por Referencia, maximo Por Referencia)
	Escribir "Ingrese el minimo"
	Leer minimo
	
	Repetir
		Escribir "Ingrese el maximo"
		Leer maximo
	Hasta Que maximo > minimo
	
FinFuncion

Funcion numeroAleatorio <- calcularAleatorio(min, max)
	numeroAleatorio = Aleatorio(min + 1, max -1)
FinFuncion


Algoritmo ejercicio_03
	/// 3- Implementar una funci—n que permita obtener un nœmero entero comprendido entre dos
	/// l’mites que introduciremos por teclado.
	
	//Declaro las variables necesarias
	Definir minimo como entero
	Definir maximo como entero
	Definir num como entero
	
	//Llamo a la funcion leerLimites para asignarle valores a maximo y minimo
	leerLimites(minimo, maximo)
	
	//Calculo el numero aleatorio y lo guardo en num
	num = calcularAleatorio(minimo, maximo)
	
	Escribir "El numero elegido es", num
FinAlgoritmo
