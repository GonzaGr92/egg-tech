//Defino una funcion que recibe como paramtro dividiendo y divisor
Funcion dividir(dividendo, divisor)
	//Creo una variable para ir restando progresivamente
	restaSucesiva = dividendo
	//Creo una variable para ir calculando el cociente
	cociente = 0
	
	//Creo un bucle que realiza restas progresivas y aumenta el cociente por cada vuelta
	//finaliza cuando el resto es menor al divisor
	Repetir
		restaSucesiva = restaSucesiva - divisor
		cociente = cociente + 1
	Hasta Que restaSucesiva < divisor
	
	//Muestro el resultado
	Escribir "El resultado de ", dividendo, "/", divisor, " es ", cociente, " el resto es ", restaSucesiva
FinFuncion


Algoritmo ejercicio_05
	///5- Realizar un procedimiento que permita obtener la divisi—n entera y el resto de la misma
	///utilizando œnicamente los operadores suma y resta.
	///NOTA: La divisi—n se considera como una sucesi—n de restas. El algoritmo cuenta cu‡ntas
	///	veces se puede restar el divisor al dividendo, siendo dicho contador el cociente. Cuando ya no
	///	se pueda restar m‡s sin obtener un nœmero positivo, se obtendr‡ el resto.
	
	//Leo los valores de dividendo y divisor
	Escribir "Ingrese el dividendo"
	Leer dividendo
	Escribir "Ingrese el divisor"
	Leer divisor
	
	//Llamo a la funcion dividir
	dividir(dividendo, divisor);
	
FinAlgoritmo
