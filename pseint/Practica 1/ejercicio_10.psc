Algoritmo ejercicio_10
	//10 - A partir de conocido una cantidad de metros obtener la medida en centímetros,
	//milímetros y pulgadas. (1 pulgada = 2,54 centimetros)
	
	Definir metros como Real
	Definir metrosAcm, metrosAmm, metrosApulg como Real

	Escribir "Ingrese la cantidad de metro/s que desea convertir a centímetros, milímetros y pulgadas: "
	Leer metros
	
	metrosAcm = metros * 100
	metrosAmm = metrosAcm * 10
	metrosApulg = metrosAcm / 2.54
	
	Escribir  "La medida ingresada en metros es igual a: ", metrosAcm, " centímetros ", metrosAmm " milímetros y ", metrosApulg, " pulgadas." 
FinAlgoritmo
