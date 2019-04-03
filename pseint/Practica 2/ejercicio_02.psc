Algoritmo ejercicio_02
	//2 - Leer dos caracteres y determinar si están en orden alfabético.
	
	Definir letraIngresada1, letraIngresada2 como Caracter
	
	Escribir "Ingrese dos letras en orden alfabético"
	Leer letraIngresada1, letraIngresada2
	
	letraIngresada1 = minusculas(letraIngresada1)
	letraIngresada2 = minusculas(letraIngresada2)

	Si letraIngresada1 < letraIngresada2 Entonces
		Escribir "Las letras fueron ingresadas en orden alfabético."
	SiNo
		Escribir "Las letras no fueron ingresadas en orden alfabético."
	FinSi
	
FinAlgoritmo
