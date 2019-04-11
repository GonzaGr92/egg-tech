//Defino un funcion que retorna el valor absoluto de un numero dado (num)
//Si el numero es negativo lo multiplico por -1 para obtener el valor positivo
Funcion valorAbsoluto <- obtenerValorAbsoluto(num) 
	si num < 0
		num = num * (-1)
	FinSi
	valorAbsoluto = num
FinFuncion


Algoritmo ejercicio_04
	///4- Implementar una funci—n que permita obtener el valor absoluto de un nœmero.
	
	//Pido al usuario que ingrese un numero
	Escribir "Ingrese un numero"
	Leer num
	
	//Llamo a la funcion obtenerValorAbsoluto y almaceno en numAbs el retorno
	numAbs = obtenerValorAbsoluto(num);
	
	Escribir "El valor absoluto de ", num, " es ", numAbs
	
FinAlgoritmo
