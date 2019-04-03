Algoritmo ejercicio_03
	//3 - Un  colegio  desea  saber  quéporcentaje  de  niños  y  quéporcentaje  de  niñas  hay  en  el  curso 
	//actual.  Diseñar  un  algoritmo  para  este  propósito  (recuerda  que  para  calcular  el  porcentaje 
	//puedes hacer una regla de 3

	Definir cantNinas, cantNinos, totalNinxs Como Entero
	Definir porcentajeNinas, porcentajeNinos Como Real
	
	Escribir  "Ingrese la cantidad de niñas en el curso actual:"
	Leer cantNinas
	Escribir "La cantidad ingresada es de: ", cantNinas
	
	Escribir  "Ingrese la cantidad de niños en el curso actual:"
	Leer cantNinos
	Escribir "La cantidad ingresada es de: ", cantNinos
	
	Escribir "El total de niñas y niños en el curso actual es de: ", cantNinas + cantNinos
	totalNinxs = cantNinas + cantNinos
	
	porcentajeNinas = (cantNinas * 100) / totalNinxs
	Escribir "El porcentaje de niñas en el curso actual es de: ", porcentajeNinas
	
	porcentajeNinos = (cantNinos * 100) / totalNinxs
	Escribir "El porcentaje de niños en el curso actual es de: ", porcentajeNinos
	
FinAlgoritmo
