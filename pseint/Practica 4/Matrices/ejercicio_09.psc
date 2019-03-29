Algoritmo ejercicio_09
	//9- Disponemos de un array unidimensional de 20 elementos de tipo caracter. Se pide
	//desarrollar uno o m‡s procedimientos que:
		//a. Pida una frase y luego copie car‡cter a caracter dentro del arreglo. Ayuda: analizar
		//la funci—n subcadena.
	
		//b. Una vez completado lo anterior, pedirle al usuario un caracter cualquiera y una
		//posici—n y el programa debe intentar ingresar el car‡cter en la posici—n indicada si
		//hay lugar (es decir si est‡ vac’o o en blanco). De ser posible debe listar el vector con
		//el caracter ingresado, de lo contrario debe darle un mensaje al usuario.
	
	//Declaro y leo una variable frase, forzando con un bucle que la longitud de la misma sea menor o igual a 20
	Definir frase como cadena;
	Repetir
		Escribir "Ingrese una frase de no mas de 20 caracteres"
		Leer frase
	Hasta Que Longitud(frase) <= 20
	
	
	Definir n como entero
	n = Longitud(frase)
	
	//Creo un vector con el tama–o de la longitud de la frase y luego le asigno cada uno de los caracteres de la frase
	Dimension vector[n]
	Para i = 1 hasta n hacer
		vector[i] = Subcadena(frase, i, i)
	FinPara
	
	//Defino y leo la variable 'nuevoCaracter', fuerzo al usuario con un bucle que ingrese un solo caracter
	Definir nuevoCaracter Como Caracter
	Repetir
		Escribir "Ingrese el nuevo caracter a insertar"
		Leer nuevoCaracter
	Hasta Que Longitud(nuevoCaracter) == 1
	
	//Leo la posicion en donde se va a insertar el caracter, validando que ingrese una posicion valida entre 1 y el tama–o de la cadena
	Definir posicion Como Entero
	Repetir
		Escribir "Indique la posicion en donde insertar el caracter"
		Leer posicion
	Hasta Que posicion >= 1 y posicion <= n
	
	//Si la posicion esta vacia (" ") inserto el caracter, caso contrario indico que no se puede realizar la operacion
	Si vector[posicion] == " "
		vector[posicion] = nuevoCaracter
		Para i = 1 hasta n hacer
			Escribir Sin Saltar vector[i]
		FinPara
		Escribir ""
	SiNo
		Escribir "No es posible insertar el caracter, esta ocupado por: ", vector[posicion]
	FinSi
	
FinAlgoritmo
