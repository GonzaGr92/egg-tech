Algoritmo ejercicio_03
	//3 - Leer un caracter y determinar si está situado antes o después de la “n” en orden alfabético.
	
	Definir letraIngresada Como Caracter
	
	Escribir "Ingrese una letra: "
	Leer letraIngresada

	letraIngresada = minusculas(letraIngresada)
	
	Si letraIngresada > "n"
		Escribir "La letra ingresada se encuentra después de la letra N en el alfabeto."
	SiNo
		Si letraIngresada < "n"
			Escribir "La letra ingresada se encuentra antes de la letra N en el alfabeto."
		SiNo
			Escribir "La letra ingresada es N."
		FinSi
	FinSi
	
FinAlgoritmo
