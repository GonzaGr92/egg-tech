// Creo una funcion que no retorna valor. Recibe dos parametros:
//		@vector => variable por referencia dimensionada a llenar con la secuencuencia de fibonacci
//		@n => dimension de la variable dimensionada
//
// Nota: Al recibir un parametro por referencia, si yo modifico su informacion dentro de la funcion tambien se modifica 
// en el proceso que haya sido declarado 

Funcion crearFibonacci (vector Por Referencia, n)
	// Necesito los dos primeros valores para iniciar la secuencia 0, 1
	vector[1] = 0
	vector[2] = 1
	
	// Como los dos primeros valores ya los he asignado previamente empizo el bucle desde 3 hasta n
	// Sumo el valor anterior y el anterior al anterior para obtener el resultado de la iteracion actual
	Para i=3 hasta n
		vector[i] = vector[i-2] + vector[i-1]
	FinPara
FinFuncion

//Creo una funcion para mostrar el vector sin valor de retorno
Funcion mostrarVector(vector, n)
	Escribir "Secuencia"
	Para i=1 hasta n
		Escribir Sin Saltar vector[i], "  "
	FinPara
	Escribir ""
FinFuncion

Algoritmo ejericio_02
	/// 2- Realizar una funci—n no recursiva que permita obtener el tŽrmino n de la serie de fibonacci.
	/// Dicha serie se define como:
	/// Fibonacci = Fibonacci + Fibonacci ... para todo n>1
	///		n n-1 n-2
	///	Fibonacci = 1 para todo n<=1
	
	//Pido el ingreso de n con la condicion de que sea mayor a dos para evitar una excepcion
	Repetir
		Escribir "Ingrese la n, mayor a 2"
		Leer n
	Hasta Que n > 2 
	
	//Declaro el vector para en base a n
	Dimension vector[n]
	
	//Llamo a la funcion para llenar el vector
	crearFibonacci(vector, n)
	//Muestro el vector
	mostrarVector(vector, n)
	
FinAlgoritmo
