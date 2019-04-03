Algoritmo ejercicio_01
	//1 - Leer un carácter por pantalla y determinar si está comprendido entre la “I” y la “M” inclusive.

	Definir letraIngresada Como Caracter
	Escribir "Ingrese una letra del abecedario para saber si está incluida entre la letra I y la letra M inclusive."
	Leer letraIngresada
	
	letraIngresada = mayusculas(letraIngresada);
	
	Si letraIngresada >= "I" y letraIngresada <= "M" Entonces
		Escribir "La letra ingresada está incluida entre la letra I y la letra M."
	SiNo
		Escribir "La letra ingresada no está incluida entre la letra I y la letra M."
	FinSi
FinAlgoritmo
