Algoritmo ejercicio_03
	//3- Realizar una matriz de m * n elementos que se rellene con nœmeros aleatorios del 1 al 100 y
	//calcular su traspuesta. NOTA: Tener en cuenta la funci—n Azar() en Pseint
	
	Definir n Como Entero
	Definir m Como Entero
	
	Escribir "Ingrese el tama–o de las filas"
	Leer n
	
	Escribir "Ingrese el tama–o de las columnas"
	Leer m
	
	Dimension matriz[n,m]
	
	Para i = 1 hasta n Hacer
		Para j = 1 hasta m Hacer
			matriz[i,j] = Aleatorio(0, 100)
		FinPara
	FinPara
	
	Escribir "Matriz original"
	Para i = 1 hasta n Hacer
		Para j = 1 hasta m Hacer
			Escribir Sin Saltar matriz[i,j], " "
		FinPara
		Escribir ""
	FinPara
	
	
	Dimension traspuesta[m,n]
	Para i = 1 hasta m Hacer
		Para j = 1 hasta n Hacer
			traspuesta[i,j] = matriz[j,i]
		FinPara
	FinPara
	
	Escribir "Matriz traspuesta"
	Para i = 1 hasta m Hacer
		Para j = 1 hasta n Hacer
			Escribir Sin Saltar traspuesta[i,j], " "
		FinPara
		Escribir ""
	FinPara
	
FinAlgoritmo
