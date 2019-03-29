Algoritmo ejercicio_7
	//7- Realizar un algoritmo que rellene un array con los 100 primeros nœmeros enteros y los
	//muestre en pantalla en orden descendente.
	
	Definir n como entero;
	n = 100
	
	Dimension vector[n]
	
	Para i = 1 Hasta n Hacer
		vector[i] = i
	Fin Para
	
	Escribir "Vector Original"
	Escribir Sin Saltar "[ "
	Para i = 1 Hasta n Hacer
		Escribir Sin Saltar vector[i], " "
	FinPara
	Escribir "]"
	
	Escribir "Vector Decendente"
	Escribir Sin Saltar "[ "
	Para i = n Hasta 1 Con Paso -1 Hacer
		Escribir Sin Saltar vector[i], " "
	FinPara
	Escribir "]"
FinAlgoritmo
