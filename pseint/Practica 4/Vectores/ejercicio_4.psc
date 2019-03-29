Algoritmo ejercicio_4
	//4- Calcular el nœmero de elementos negativos, cero y positivos de un vector de 100 elementos.
	Definir n como entero;
	n = 100
	
	Dimension vector[n]
	
	Para i = 1 Hasta n Hacer
		vector[i] = Aleatorio(-100, 100)
	Fin Para
	
	Escribir Sin Saltar "[ "
	Para i = 1 Hasta n Hacer
		Escribir Sin Saltar vector[i], " "
	FinPara
	Escribir "]"
	
	Definir cont_ceros Como Entero;
	Definir cont_positivos Como Entero;
	Definir cont_negativos Como Entero;
	
	cont_ceros = 0
	cont_positivos = 0
	cont_negativos = 0
	
	Para i = 1 Hasta n Hacer
		Si vector[i] == 0 
			cont_ceros = cont_ceros + 1
		SiNo
			Si vector[i] > 0
				cont_positivos = cont_positivos + 1
			SiNo
				cont_negativos = cont_negativos + 1
			FinSi
		FinSi
	Fin Para
	
	Escribir "La cantidad de ceros encontrados fue: ", cont_ceros
	Escribir "La cantidad de positivos encontrados fue: ", cont_positivos
	Escribir "La cantidad de negativos encontrados fue: ", cont_negativos
	
FinAlgoritmo
