//Defino un metodo que reciba como parametro un numero y retorne la sumatoria de sus multiplos
Funcion sumatoria <- obtenerSumatoriaDeMultiplos(num)
	sumatoria = 0
	Escribir Sin Saltar "Multiplos: "
	Para i = 1 hasta num - 1 
		si num % i == 0 
			Escribir Sin Saltar i " "
			sumatoria = sumatoria + i
		finSi
	FinPara
	Escribir ""
FinFuncion

Algoritmo ejercicio_08
	///8- Realizar un subprograma que calcule la suma de los divisores de n distintos de n.
	
	//Obtengo el numero
	Escribir "Ingrese un numero"
	Leer num
	
	//Llamo al metodo obtenerSumatoriaDeMultiplos y almaceno en sum el resultado 
	sum = obtenerSumatoriaDeMultiplos(num)
	
	//Muestro el resultado
	Escribir "El resultado de la sumatoria es ", sum 
FinAlgoritmo
