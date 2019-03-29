Algoritmo ejercicio_11
	//11- Tomando en cuenta el ejercicio anterior, mejore el mecanismo de inserci—n del car‡cter,
	//facilitando un potencial reordenamiento del vector. Digamos que se pide ingresar el car‡cter en
	//la posici—n X y la misma est‡ ocupada, entonces de existir un espacio en cualquier posici—n X-n
	//o X+n, desplazar los caracteres hacia la izq o hacia la derecha para poder ingresar el car‡cter en
		//cuesti—n en el lugar deseado. El procedimiento de reordenamiento debe ubicar el espacio m‡s
		//cercano.
		
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
		
		//Busco cual es la poscion mas cercana hacia la derecha, empezando desde la poscion y terminando en el ultimo caracter
		derecha = n
		Para i = posicion hasta n hacer
			si i < derecha y vector[i] == " "
				derecha = i
			FinSi
		FinPara
		
		//Busco cual es la poscion mas cercana hacia la izquierda, empezando desde la poscion y terminando en el primer caracter
		izquierda = 1
		Para i = posicion hasta 1 con paso -1 hacer
			si i > izquierda y vector[i] == " "
				izquierda = i
			FinSi
		FinPara
		
		//Analizo cual es la menor distancia, en el primer caso es hacia la izquierda, en el segundo es hacia la derecha
		si posicion - izquierda < derecha - posicion
			//Utilizo dos variables auxiliares. Insert inicialmente toma el caracter a insertar, aux almacena el valor actual y 
			//luego es reemplazado con insert. Luego incert toma el valor original de la posicion
			insert = nuevoCaracter
			Para i = posicion hasta izquierda con paso -1 hacer
				aux = vector[i]
				vector[i] = insert
				insert = aux
			FinPara
			
			//Finalmente muestro el resultado
			Para i = 1 hasta n hacer
				Escribir Sin Saltar vector[i]
			FinPara
			Escribir ""
			
		SiNo
			si posicion - izquierda > derecha - posicion
				//Utilizo dos variables auxiliares. Insert inicialmente toma el caracter a insertar, aux almacena el valor actual y 
				//luego es reemplazado con insert. Luego incert toma el valor original de la posicion
				insert = nuevoCaracter
				Para i = posicion hasta derecha con paso 1 hacer
					aux = vector[i]
					vector[i] = insert
					insert = aux
				FinPara
				
				//Finalmente muestro el resultado
				Para i = 1 hasta n hacer
					Escribir Sin Saltar vector[i]
				FinPara
				Escribir ""
			SiNo
				Escribir "No se puede insertar el caracter"
			FinSi
		FinSi
	FinSi
	
FinAlgoritmo