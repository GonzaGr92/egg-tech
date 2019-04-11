//La funcion maximoComunDivisior esta basada en el algoritmo de Euclides
Funcion mcd <- calcularMaximoComunDivisor(a, b)
	Mientras b > 0 hacer
		si a > b
			a = a - b
		SiNo
			b = b - a
		FinSi
	FinMientras
	mcd = a
FinFuncion

Algoritmo ejercicio_07
	///7- Dise–ar una funci—n que permita obtener el m‡ximo comœn divisor de dos nœmeros mediante
	///el algoritmo de Euclides.
	
	//Leo los dos numeros
	Escribir "Ingrese el primer numero"
	Leer numA
	Escribir "Ingrese el segundo numero"
	Leer numB
	
	//Llamo a la funcion para encontrar el maximo comun divisior y guardo el resultado en la variable mcd
	mcd = calcularMaximoComunDivisor(numA, numB)
	
	//Muestro los resultados
	Escribir "El maximo comun divisor entre ", numA, " y ", numB, " es ", mcd
FinAlgoritmo
