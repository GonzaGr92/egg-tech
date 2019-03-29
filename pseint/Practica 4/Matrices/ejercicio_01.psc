Algoritmo ejercicio_01
	//1- Rellenar una matriz identidad de 5 * 5. NOTA: La matriz identidad es aquella en la que todos
	//los elementos de la diagonal principal son unos y el resto de los elementos son cero
	
	Definir n Como Entero
	n = 5
	
	Dimension matriz[n,n]
	
	Para i = 1 Hasta n Hacer
		Para j = 1 Hasta n Hacer
			Si i == j 
				matriz[i,j] = 1
			SiNo
				matriz[i,j] = 0
			FinSi
		Fin Para
	Fin Para
	
	
	Para i = 1 Hasta n Hacer
		Para j = 1 Hasta n Hacer
			Escribir Sin Saltar matriz[i,j], " "
		Fin Para
		Escribir ""
	Fin Para
	
FinAlgoritmo
