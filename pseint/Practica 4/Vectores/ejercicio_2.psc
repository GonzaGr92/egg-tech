Algoritmo ejercicio_2
	//2- Se tienen N temperaturas almacenadas en un vector. Se desea calcular la media y obtener el
	//nœmero de temperaturas mayores o iguales a la media.
	
	Definir n Como Entero;
	
	Escribir "Ingrese la cantidad de temperaturas"
	Leer n
	
	Dimension temperaturas[n]
	Para i = 1 Hasta n Hacer
		temperaturas[i] = Aleatorio(0, 100)
	Fin Para
	
	Escribir Sin Saltar "[ "
	Para i = 1 Hasta n Hacer
		Escribir Sin Saltar temperaturas[i], " "
	Fin Para
	Escribir "]"
	
	
	Definir sumatoria como entero
	sumatoria = 0
	Para i = 1 Hasta n Hacer
		sumatoria = sumatoria + temperaturas[i]
	Fin Para
	
	
	Definir media Como Real
	media = sumatoria / n
	
	Escribir "Media: ", media
	Escribir "Valores mayores o igual a la media"
	
	Escribir Sin Saltar "[ "
	Para i = 1 Hasta n Hacer
		Si temperaturas[i] >= media
			Escribir sin saltar temperaturas[i], " "
		fin Si
	Fin Para
	Escribir "]"
	
FinAlgoritmo
