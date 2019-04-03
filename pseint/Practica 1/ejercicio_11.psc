Algoritmo ejercicio_11
	//11 -  Ingresados  el  consumo  promedio  de  un  automóvil  en  litros  por  kilómetro  (lt/km)  y  la 
	//cantidad  de  litros  de  combustible  cargados  en  la estación,  calcular  la  cantidad  de  kilómetros 
	//que podrá recorrer

	Definir consumoPromedio, ltsCargados, kmsDisponibles Como Real
	
	Escribir "Ingrese la cantidad de litros de combustibles cargados" 
	Leer ltsCargados
	
	consumoPromedio = 0.07
	kmsDisponibles = ltsCargados / consumoPromedio
	
	Escribir "La cantidad de kilómetros que podrá recorrer con el combustible cargado es de: ", TRUNC(kmsDisponibles), "km"
	
FinAlgoritmo
