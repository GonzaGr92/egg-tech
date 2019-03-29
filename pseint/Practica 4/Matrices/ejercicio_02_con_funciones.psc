Funcion llenarMatriz ( matriz Por Referencia, n, m )
	Para i = 1 hasta n Hacer
		Para j = 1 hasta m Hacer
			matriz[i,j] = Aleatorio(0, 100)
		FinPara
	FinPara
Fin Funcion

Funcion leerDimensiones ( n por referencia, m por referencia)
	Escribir "Ingrese el tama–o de las filas"
	Leer n
	
	Escribir "Ingrese el tama–o de las columnas"
	Leer m
Fin Funcion

Funcion mostrarMatriz(matriz, n, m)
	Para i = 1 hasta n Hacer
		Para j = 1 hasta m Hacer
			Escribir Sin Saltar matriz[i,j], " "
		FinPara
		Escribir ""
	FinPara
FinFuncion

Funcion sumaPares <- sumarNumerosPares(matriz, n, m)
	sumaPares = 0
	Para i = 1 hasta n Hacer
		Para j = 1 hasta m Hacer
			si matriz[i,j] mod 2 == 0 
				sumaPares = sumaPares + matriz[i,j]
			FinSi
		FinPara
	FinPara
FinFuncion

Funcion sumaImpares <- sumarNumerosImpares(matriz, n, m)
	Para i = 1 hasta n Hacer
		Para j = 1 hasta m Hacer
			si matriz[i,j] mod 2 != 0 
				sumaImpares = sumaImpares + matriz[i,j]
			FinSi
		FinPara
	FinPara
FinFuncion

Algoritmo ejercicio_02
	//2- Dada una lista de n * m elementos realizar un mŽtodo que calcule y muestre la suma de los
	//nœmeros pares y la suma de los nœmeros impares
	
	Definir n Como Entero
	Definir m Como Entero
	leerDimensiones(n,m)
	
	Dimension matriz[n,m]
	llenarMatriz(matriz, n, m)
	mostrarMatriz(matriz, n, m)
	
	Escribir "La suma de los numeros pares es: ", sumarNumerosPares(matriz, n, m)
	Escribir "La suma de los numeros impares es: ", sumarNumerosImpares(matriz, n, m)
	
FinAlgoritmo