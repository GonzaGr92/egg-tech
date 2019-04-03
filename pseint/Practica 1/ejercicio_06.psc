Algoritmo ejercicio_06
	//6 - Pedir base y altura de un rectangulo, calcular y mostrar el perímetro y área del mismo
	
	Definir base, altura Como Real 
	Definir perimetro, area Como Real
	
	Escribir "Ingrese el valor de la base del rectangulo: "
	Leer base
	Escribir  "El valor ingresado es: ", base
	
	Escribir "Ingrese el valor de la altura del rectangulo: "
	Leer altura
	Escribir "El valor ingresado es: ", altura
	
	area = base * altura
	perimetro = (base * 2) + (altura * 2)
	
	Escribir "El valor del área es: ", area
	Escribir "El valor del perímetro: ", perimetro
	
FinAlgoritmo
