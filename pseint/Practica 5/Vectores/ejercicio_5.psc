Algoritmo ejercicio_5
	//5- Introducir una frase por teclado de no m‡s de 30 caracteres. Imprimir 5 veces, pero en cada
	//impresi—n desplazar 2 columnas a la derecha.
	
	Definir frase como cadena;
	
	Repetir
		Escribir "Introducir una frase de no m‡s de 30 caracteres"
		Leer frase
	Hasta Que LONGITUD(frase) <= 30 
	
	Definir n Como Entero
	n = 5
	
	Dimension frases[n] 
	Para i = 1 Hasta n Hacer
		Para j = 1 Hasta i Hacer
			frases[i] = frases[i] + " " + " "
		Fin Para
		frases[i] = frases[i] + frase
	Fin Para
	
	Para i = 1 Hasta n Hacer
		Escribir frases[i]
	Fin Para
FinAlgoritmo
 