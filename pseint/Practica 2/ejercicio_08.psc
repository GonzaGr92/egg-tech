Algoritmo ejercicio_08
	//8 - Realizar un algoritmo que dado un número entero, visualice en pantalla si es par o impar. En 
	//el caso de ser 0, debe visualizar “el número no es par ni impar” (para que un número sea par, 
	//se debe dividir entre dos y que su resto sea 0).

	Definir nro Como Entero

	Escribir "Ingrese un número en el espacio correspondiente, para definir si es par o impar: "
	Leer nro
	
	Si nro = 0 Entonces
		Escribir "El número que usted ingresó no es par ni impar."
	SiNo 
		Si nro MOD 2 = 0 Entonces
			Escribir "El número que usted ingresó es un número par."
		SiNo
			Escribir "El número que usted ingresó es un número impar."
		FinSi
	FinSi
	
	
FinAlgoritmo
