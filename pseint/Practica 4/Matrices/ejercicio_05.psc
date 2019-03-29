Funcion result <- normalizarNumero (num, long)
	result = convertirATexto(num)
	
	Para i = 1 hasta long - Longitud(result) Con Paso 1 hacer
		result = '0' + result	
	FinPara
	
Fin Funcion

Algoritmo ejercicio_05
	//5- Una distribuidora de NescafŽ tiene 16 representantes que viajan por toda la Argentina
	//ofreciendo sus productos. Para tareas administrativas el pais est‡ dividido en cinco zonas:
	//Norte, Sur, Este, Oeste y Centro. Mensualmente almacena sus datos y obtiene distintas
	//estad’sticas sobre el comportamiento de sus representantes en cada zona. 
	//
	//Se desea hacer un programa que lea los datos de todos los representantes con sus ventas en cada zona y calcule el
	//total de ventas de una zona introducida por teclado, el total de ventas de un vendedor
	//introducido por teclado en cada una de las zonas y el total de ventas de un d’a y para cada uno
	//de los representantes.
	
	
	CANT_REP = 16
	CANT_DIAS = 30
	CANT_ZONAS = 5
	
	Dimension nescafe[CANT_REP, CANT_DIAS, CANT_ZONAS]
	
	
	//Llenar arreglo
	Para k = 1 hasta CANT_REP Hacer
		Para i = 1 hasta CANT_DIAS Hacer
			Para j = 1 hasta CANT_ZONAS hacer
				nescafe[k, i, j] = Aleatorio(0, 99);
			FinPara
		FinPara
	FinPara	
	
	//Mostrar arreglo
	Para k = 1 hasta CANT_REP Hacer
		Para i = 1 hasta CANT_DIAS Hacer
			Para j = 1 hasta CANT_ZONAS hacer
				Escribir Sin Saltar normalizarNumero(nescafe[k, i, j], 2), "  "
			FinPara
			Escribir ""
		FinPara
		Escribir ""
		Escribir ""
	FinPara
	
	
	//PARTE I
	//Leer zona
	Definir zona Como Entero
	Escribir "Seleccione la zona"
	Leer zona
	
	//Iterar representantes y dias manteniendo fija la zona
	Dimension totalZonaPorRepresentante[CANT_REP]
	Para k = 1 hasta CANT_REP Hacer
		Para i = 1 hasta CANT_DIAS Hacer
			totalZonaPorRepresentante[k] = totalZonaPorRepresentante[k] + nescafe[k, i, zona]
		FinPara
	FinPara
	
	//Mostrar la venta por zona
	Escribir "Ventas de la zona "
	Para k = 1 hasta CANT_REP Hacer
		Escribir Sin Saltar totalZonaPorRepresentante[k], " "
	FinPara
	Escribir ""
	Escribir ""
	Escribir "********** ********** **********"
	Escribir ""
	
	
	//PARTE II
	//Leer representante
	Definir representante Como Entero
	Escribir "Seleccione el representante"
	Leer representante
	
	//Iterar dias por zona manteniendo el representante fijo
	Dimension totalVentaPorZona[CANT_ZONAS]
	Para i = 1 hasta CANT_DIAS Hacer
		Para j = 1 hasta CANT_ZONAS hacer
			totalVentaPorZona[j] = totalVentaPorZona[j] + nescafe[representante, i, j];
		FinPara
	FinPara
	
	//Mostrar la venta del representante
	Escribir "Ventas del representante "
	Para j = 1 hasta CANT_ZONAS hacer
		Escribir Sin Saltar totalVentaPorZona[j], " "
	FinPara
	Escribir ""
	Escribir ""
	Escribir "********** ********** **********"
	Escribir ""
	
	//PARTE III
	//Leer dia
	Definir dia Como Entero
	Escribir "Seleccione el dia"
	Leer dia
	
	//Iterar zonas por representante manteniendo el dia fijo
	Dimension totalVentaPorDia[CANT_REP]
	Para k = 1 hasta CANT_REP Hacer
		Para j = 1 hasta CANT_ZONAS hacer
			totalVentaPorDia[k] = totalVentaPorDia[k] + nescafe[k, dia, j];
		FinPara
	FinPara	
	
	//Mostrar la venta por dia
	Escribir "Ventas del dia "
	Para k = 1 hasta CANT_REP Hacer
		Escribir Sin Saltar totalVentaPorDia[k], " "
	FinPara
	Escribir ""
	Escribir ""
	Escribir "********** ********** **********"
	Escribir ""
	
FinAlgoritmo
