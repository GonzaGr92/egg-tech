//Defino un metodo que reciba como parametro un numero y retorne la sumatoria de sus multiplos
Funcion sumatoria <- obtenerSumatoriaDeMultiplos(num)
	sumatoria = 0
	Escribir Sin Saltar "Multiplos ", num ,": "
	Para i = 1 hasta num - 1 
		si num % i == 0 
			Escribir Sin Saltar i " "
			sumatoria = sumatoria + i
		finSi
	FinPara
	Escribir " = ", sumatoria
FinFuncion

//Defino un metodo para comparar los resultados
Funcion determinarSiSonAmigos(numA, sumA, numB, sumB)
	si numA == sumB y numB == sumA
		Escribir "Los numeros ", numA " y ", numB, " son amigos" 
	SiNo
		Escribir "Los numeros no son amigos"
	FinSi
FinFuncion

Algoritmo ejercicio_09
	///9- Dos nœmeros son amigos si cada uno de ellos es igual a la suma de los divisores del otro.
	/// Por ejemplo 220 y 284 son amigos ya que:
	///	Suma de divisores de 
	///
	///	284 = 1 + 2 + 4 + 71 + 142 = 220
	///	220 = 1 + 2 + 4 + 5 + 10 + 11 + 20 + 22 + 44 + 55 + 110 = 284
	///
	///	Dise–e un algoritmo que muestre todas las parejas de nœmero amigos menores o iguales a m,
	///	siendo m un nœmero introducido por teclado.
	
	//Obtengo el primer numero
	Escribir "Ingrese un numero"
	Leer numA
	
	//Obtengo el segundo numero
	Escribir "Ingrese un numero"
	Leer numB
	
	//Calculo sus sumatorias
	sumA = obtenerSumatoriaDeMultiplos(numA)
	sumB = obtenerSumatoriaDeMultiplos(numB)
	
	//Comparo los resultados
	determinarSiSonAmigos(numA, sumA, numB, sumB)
	
FinAlgoritmo