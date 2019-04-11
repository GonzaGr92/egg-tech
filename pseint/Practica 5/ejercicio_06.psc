//Creo una funcion que toma el radio y el angulo y los convierte a coordenadas cartesianas
Funcion convertirACoordenadasCartesianas(radio, angulo)
	cord_x = radio + COS(angulo)
	cord_y = radio + SEN(angulo)
	Escribir "Las coordenadas cartesianas son (", cord_x, ",", cord_y,")"
FinFuncion


Algoritmo ejercicio_06
	///6- Dise–ar un procedimiento que permita convertir coordenadas polares (radio, angulo) en
	///cartesianas (x,y)
	///NOTA: x=radio*cos(angulo) e y=radio*sen(angulo)
	
	
	//Leo el angulo y el radio
	Escribir "Ingrese las coordenadas polares"
	Escribir Sin Saltar "radio: "
	Leer radio
	Escribir Sin Saltar "angulo: "
	Leer angulo
	
	//Llamo a la funcion para convertir las coordenadas
	convertirACoordenadasCartesianas(radio, angulo)
	
FinAlgoritmo