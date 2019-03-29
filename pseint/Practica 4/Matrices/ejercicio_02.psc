Algoritmo ejercicio_02
	//2- Dada una lista de n * m elementos realizar un método que calcule y muestre la suma de los
	//números pares y la suma de los números impares
	
	Definir n Como Entero
	Definir m Como Entero
	
	Escribir "Ingrese el tamaño de las filas"
	Leer n
	
	Escribir "Ingrese el tamaño de las columnas"
	Leer m
	
	Dimension matriz[n,m]
	
	Para i = 1 hasta n Hacer
		Para j = 1 hasta m Hacer
			matriz[i,j] = Aleatorio(0, 100)
		FinPara
	FinPara
	
	Para i = 1 hasta n Hacer
		Para j = 1 hasta m Hacer
			Escribir Sin Saltar matriz[i,j], " "
		FinPara
		Escribir ""
	FinPara
	
	Definir sumaPares como entero
	Definir sumaImpares como entero
	
	sumaPares = 0
	sumaImpares = 0
	Para i = 1 hasta n Hacer
		Para j = 1 hasta m Hacer
			si matriz[i,j] mod 2 == 0 
				sumaPares = sumaPares + matriz[i,j]
			SiNo
				sumaImpares = sumaImpares + matriz[i,j]
			FinSi
		FinPara
		Escribir ""
	FinPara
	
	Escribir "La suma de los numeros pares es: ", sumaPares
	Escribir "La suma de los numeros impares es: ", sumaImpares
	
FinAlgoritmo
