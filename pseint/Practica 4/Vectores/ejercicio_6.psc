Algoritmo ejercicio_6
	//6- Hacer un programa que lea las notas de un alumno en 10 asignaturas. Calcular el promedio,
	//el m‡ximo y el m’nimo e imprimirlo por pantalla.
	
	Definir n como entero;
	n = 10
	
	Dimension notas[n]
	
	Para i = 1 Hasta n Hacer
		notas[i] = Aleatorio(1, 10)
	Fin Para
	
	Escribir Sin Saltar "[ "
	Para i = 1 Hasta n Hacer
		Escribir Sin Saltar notas[i], " "
	FinPara
	Escribir "]"
	
	Definir maximo Como Entero;
	Definir minimo Como Entero;
	Definir suma Como Entero;
	
	maximo = notas[1]
	minimo = notas[1]
	Para i = 1 Hasta n Hacer
		si notas[i] > maximo
			maximo = notas[i]
		FinSi
		
		si notas[i] < minimo 
			minimo = notas[i]
		FinSi
		suma = suma + notas[i]
	FinPara
	
	Escribir "La nota minima es: ", minimo
	Escribir "La nota maxima es: ", maximo
	Escribir "El promedio es: ", suma/n
	
FinAlgoritmo
