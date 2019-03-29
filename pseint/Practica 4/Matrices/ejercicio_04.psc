Funcion result <- normalizarNumero (num, long)
	result = convertirATexto(num)
	
	Para i = 1 hasta long - Longitud(result) hacer
		result = '0' + result	
	FinPara
	
Fin Funcion


Algoritmo ejercicio_04
	//4- Una empresa de venta de productos por correo desea realizar una estad’stica de las ventas
	//realizadas de cada uno de sus productos por mes a lo largo del a–o. Distribuye 100 productos
	//por los 12 meses del a–o. Se desea conocer:
		//A- Ventas anuales de cada producto.
		//B- Total de ventas de cada mes.
		//C- El producto m‡s vendido en cada mes.
	//D- El nombre, el mes y la cantidad del producto m‡s vendido.
	
	//Cantidad de Productos
	CANT_PROD = 10
	//Cantidad de Meses
	CANT_MESES = 12
	
	//Meses del a–o
	//Dimension meses[CANT_MESES]
	Dimension meses[CANT_MESES]
	meses[1] = "ENE"
	meses[2] = "FEB"
	meses[3] = "MAR"
	meses[4] = "ABR"
	meses[5] = "MAY"
	meses[6] = "JUN"
	meses[7] = "JUL"
	meses[8] = "AGO"
	meses[9] = "SEP"
	meses[10] = "OCT"
	meses[11] = "NOV"
	meses[12] = "DIC"
	
	//Declaro y lleno la matriz de numeros aleatorios en funcion de la cantidad de productos y la cantidad de meses
	Dimension ventas[CANT_PROD, CANT_MESES]
	Para i = 1 hasta CANT_PROD Hacer
		Para j = 1 hasta CANT_MESES Hacer
			ventas[i,j] = Aleatorio(0, 1000)
		FinPara
	FinPara
	
	//Calculo el total de ventas anuales por producto, utilizo un vector
	Dimension ventasAnuales[CANT_PROD]
	Para i = 1 hasta CANT_PROD Hacer
		Para j = 1 hasta CANT_MESES Hacer
			ventasAnuales[i] = ventasAnuales[i] + ventas[i,j]
		FinPara
	FinPara
	
	//Calculo las ventas mensuales
	Dimension ventasMensuales[CANT_MESES]
	Para i = 1 hasta CANT_PROD Hacer
		Para j = 1 hasta CANT_MESES Hacer
			ventasMensuales[j] = ventasMensuales[j] + ventas[i,j]
		FinPara
	FinPara
	
	//Busco el valor y los indices de los mas vendidos mensualmente (primera columna valor, segunda indice de fila)
	Dimension masVendidos[CANT_MESES, 2]
	Para i = 1 hasta CANT_PROD Hacer
		Para j = 1 hasta CANT_MESES Hacer
			si ventas[i,j] > masVendidos[j, 1] 
				masVendidos[j, 1] = ventas[i,j]
				masVendidos[j, 2] = i
			FinSi
		FinPara
	FinPara
	
	//Muestro la matriz con el formato correspondiente
	
	//Imprimir encabezado
	Escribir Sin Saltar "              "
	Para j = 1 hasta CANT_MESES Hacer
		Escribir Sin Saltar meses[j], "   "
	FinPara
	Escribir Sin Saltar "TOTAL PRODUCTO"
	Escribir ""
	
	//Imprimir cuerpo
	Escribir ""
	Para i = 1 hasta CANT_PROD Hacer
		Para j = 1 hasta CANT_MESES Hacer
			//En la primera columna imprimir el producto
			si j == 1 
				Escribir Sin Saltar "Producto-", normalizarNumero(i, 3), "  ";
			FinSi
			
			Escribir Sin Saltar normalizarNumero(ventas[i,j], 4), "  "
			
			//En la ultima columna imprimir el total
			si j == CANT_MESES 
				Escribir Sin Saltar "    ", ventasAnuales[i];
			FinSi
		FinPara
		Escribir ""
	FinPara
	
	//Imprimir pie
	Escribir ""
	Escribir Sin Saltar "TOTAL MES     "
	Para j = 1 hasta CANT_MESES Hacer
		Escribir Sin Saltar ventasMensuales[j], "  "
	FinPara
	Escribir ""
	
	Escribir Sin Saltar "MAS VENDIDO   "
	Para j = 1 hasta CANT_MESES Hacer
		Escribir Sin Saltar " " normalizarNumero(masVendidos[j,2], 3), "  "
	FinPara
	Escribir ""
	
	
FinAlgoritmo
