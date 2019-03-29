Algoritmo ejercicio_08
	//8- Escribir un algoritmo que realice la bœsqueda lineal de un nœmero entero dado por el usuario
	//y devuelva por pantalla sus coordenadas. Definir la matriz a gusto o solicitarle los valores al
	//usuario.
	
	//Ingresar filas
	Definir n Como Entero
	Escribir "Ingrese la cantidad de filas de la matriz"
	Leer n
	
	//Ingresar columnas
	Definir m Como Entero
	Escribir "Ingrese la cantidad de columnas de la matriz"
	Leer m
	
	Dimension matriz[n,m]
	
	//Generar matriz
	Para i = 1 hasta n Hacer
		Para j = 1 hasta m Hacer
			matriz[i,j] = Aleatorio(0, 99)
		FinPara
	FinPara
	
	//Mostrar matriz
	Para i = 1 hasta n Hacer
		Para j = 1 hasta m Hacer
			Escribir Sin Saltar matriz[i,j], "  " 
		FinPara
		Escribir ""
	FinPara
	
	//Pedir numero
	Definir nro Como Entero
	Escribir "Ingrese el numero a buscar"
	Leer nro
	
	//Buscar coincidencias
	Definir sinCoincidencias como logico
	sinCoincidencias = Verdadero
	
	Para i = 1 hasta n Hacer
		Para j = 1 hasta m Hacer
			si matriz[i,j] == nro
				Escribir "Se encontro una coincidencia en la posicion [", i, ",", j "]"
				sinCoincidencias = false
			FinSi
		FinPara
	FinPara
	
	Si sinCoincidencias
		Escribir "No se encontraron coincidencias"
	FinSi
	
	
FinAlgoritmo
