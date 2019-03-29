Algoritmo ejercicio_1
	//1- Escribir un algoritmo que calcule los cuadrados de los primeros 100 nœmeros enteros y a
	//continuaci—n escribirlo por pantalla.
	
	Definir CANT_NUMEROS como entero;
	CANT_NUMEROS = 100
	
	Dimension lista[CANT_NUMEROS]
	
	Para i = 1 Hasta CANT_NUMEROS Hacer
		lista[i] = i * i
	Fin Para
	
	Escribir Sin Saltar "[ "
	Para i = 1 Hasta CANT_NUMEROS Hacer
		Escribir Sin Saltar lista[i], " "
	FinPara
	Escribir "]"
	
	
FinAlgoritmo
