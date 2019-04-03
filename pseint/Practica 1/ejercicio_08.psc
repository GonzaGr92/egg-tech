Algoritmo ejercicio_08
	//8 - Crear un pseudocódigo que proporcione el  precio medio de un producto, calculado a partir
	// del precio del mismo en tres establecimientos distintos
	
	Definir precio1, precio2, precio3 Como Real
	Definir precioPromedio Como Real

	Escribir "El precio del producto X en el Establecimiento 1 es: "
	Leer precio1
	Escribir "El precio ingresado del producto X en el Establecimiento 1 es: $ ", precio1
	
	Escribir "El precio del producto X en el Establecimiento 2 es: "
	Leer precio2
	Escribir "El precio ingresado del producto X en el Establecimiento 2 es: $ ", precio2
	
	Escribir "El precio del producto X en el Establecimiento 3 es: "
	Leer precio3
	Escribir "El precio ingresado del producto X en el Establecimiento 3 es: $ ", precio3
	
	precioPromedio = (precio1 + precio2 + precio3) / 3
	
	Escribir "El precio promedio del producto X, calculado en base a su precio en tres establecimientos diferentes es: $ ", precioPromedio
	
FinAlgoritmo
