Algoritmo ejercicio_3
	//3- Calcule la suma de todos los elementos de un vector de tamaño 20 y su media aritmética.
	
	Definir n como entero;
	n = 20
	
	Dimension vector[n]
	
	Para i = 1 Hasta n Hacer
		vector[i] = Aleatorio(0, 100)
	Fin Para
	
	Escribir Sin Saltar "[ "
	Para i = 1 Hasta n Hacer
		Escribir Sin Saltar vector[i], " "
	FinPara
	Escribir "]"
	
	Definir sumatoria como entero;
	Para i = 1 Hasta n Hacer
		sumatoria = sumatoria + vector[i];
	Fin Para
	
	Escribir "Suma: ", sumatoria
	Escribir "Media: ", sumatoria / n 
FinAlgoritmo
