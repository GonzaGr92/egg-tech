Algoritmo ejercicio_06
	//6- Una matriz m‡gica es una matriz cuadrada (tiene igual nœmero de filas que de columnas) que
	//tiene como propiedad especial que la suma de las filas, las columnas y las diagonales es igual.
	//Por ejemplo:
		//2 7 6
		//9 5 1
		//4 3 8
	//En esta matriz las sumas son 15. Considere el problema de construir un algoritmo que
	//compruebe si una matriz de datos enteros es m‡gica o no, y en caso de que sea m‡gica escribir
	//la suma. El programa deber‡ comprobar que los nœmeros introducidos son correctos, es decir,
	//est‡n entre el 1 y el 9. El usuario ingresa el tama–o de la matriz m‡ximo hasta 10.
	
	//Leer el tama–o de la matriz para valores entre 2 y 10
	Repetir
		Escribir "Ingrese la dimension de la matriz maximo 10"
		Definir n Como Entero;
		Leer n;
	Hasta Que n > 2 y n <= 10 
	
	Dimension matriz[n,n]
	
	//Ingresar los valores de la matriz entre 1 y 9
	Escribir "Ingrese los valores para cada una de las coordenas de la matriz. Valores posibles 1..9"
	Para i = 1 hasta n Hacer
		Para j = 1 hasta n Hacer
			Repetir
				Escribir Sin Saltar "(", i ,",", j ,"):"
				Leer matriz[i,j]
			Hasta Que matriz[i,j] >= 1 y  matriz[i,j] <= 9
		FinPara
	FinPara
	
	//Mostrar la matriz
	Para i = 1 hasta n Hacer
		Para j = 1 hasta n Hacer
			Escribir Sin Saltar matriz[i,j], " "
		FinPara
		Escribir ""
	FinPara
	
	//1. Calcular la sumatoria de la diagonal principal
	Definir sumaDiagonalPrincipal como entero
	Para i = 1 hasta n Hacer
		Para j = 1 hasta n Hacer
			si i == j 
				sumaDiagonalPrincipal = sumaDiagonalPrincipal + matriz[i,j]
			FinSi
		FinPara
	FinPara
	
	//2. Calcular la sumatoria de la diagonal inversa
	Definir sumaDiagonalInversa como entero
	Para i = 1 hasta n Hacer
		Para j = 1 hasta n Hacer
			si i + j == n + 1
				sumaDiagonalInversa = sumaDiagonalInversa + matriz[i,j]
			finsi
		FinPara
	FinPara
	
	//3. Calcular la sumatoria de las filas y columnas
	Dimension sumaFilas[n]
	Dimension sumaColumnas[n]
	Para i = 1 hasta n Hacer
		Para j = 1 hasta n Hacer
			sumaFilas[i] = sumaFilas[i] + matriz[i,j] 
			sumaColumnas[i] = sumaColumnas[i] + matriz[i,j] 
		FinPara
	FinPara
	
	
	//Comprobar que la matriz es magica. 
	//Doy por echo de que la matriz es magica y voy a buscar casos en donde la suma de diferente. 
	//Utilizo como valor de referencia la suma de la diagonal principal
	
	Definir correcto como logico;
	correcto = Verdadero
	
	//Checkeo la diagonal inversa
	si sumaDiagonalPrincipal != sumaDiagonalInversa
		correcto = Falso
	FinSi
	
	//Checkeo las filas
	Para i = 1 hasta n Hacer
		si sumaFilas[i] != sumaDiagonalPrincipal
			correcto = Falso
		FinSi
	FinPara
	
	//Checkeo las columnas
	Para j = 1 hasta n Hacer
		si sumaColumnas[j] != sumaDiagonalPrincipal
			correcto = Falso
		FinSi
	FinPara
	
	
	//Terminada la comprobacion voy a mostrar el texto correspondiente para una matriz magica o no
	si correcto
		Escribir "La matriz es magica, su suma es ", sumaDiagonalInversa
	SiNo
		Escribir "La matriz no es magica"
	FinSi
	
FinAlgoritmo
