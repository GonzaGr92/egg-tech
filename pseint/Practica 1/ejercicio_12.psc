Algoritmo ejercicio_12
	//12 - Crear el pseudocódigo necesario para ingresado el valor de un producto a principio de año y 
	//al final pueda obtenerse el porcentaje de aumento.

	Definir precioInicial, precioFinal, varPorcentual Como Real

	Escribir "Ingresar el precio del producto a principio de año: "
	Leer precioInicial
	Escribir "El precio del producto a principio de año es de: $ ", precioInicial
	
	Escribir "Ingresar el precio del mismo producto a fin de año: "
	Leer precioFinal
	Escribir "El precio del producto a fin de año es de: $", precioFinal
	
	varPorcentual = (precioFinal/precioInicial)*100
	Escribir "La variación porcentual del precio del producto es de: ", varPorcentual, " %. "
	
FinAlgoritmo
