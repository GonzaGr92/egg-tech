Algoritmo ejercicio_07
	//7 - Una  tienda  ofrece  un  descuento  del  15%  sobre  el  total  de  la  compra  durante  el  mes  de 
	//octubre. Dado un mes y un importe, calcular cuál es la cantidad que se debe cobrar al cliente. 

	Definir mes Como Caracter
	Definir importe Como Real

	Escribir "Ingrese el importe de la compra: $ "
	Leer importe
	
	Escribir "Ingrese el mes en el que se realizó la compra: ";
	Leer mes
	mes = minusculas(mes)
	
	Si mes="octubre" Entonces 
		total = importe * 0.85
		descuento = importe * 0.15

		Escribir "El importe a pagar por la compra realizada es de: $ ", total, ", y su descuento fue de: $ ", redon(descuento);
	SiNo
		Escribir "El importe a pagar por la compra realizada es de: $ ", importe, " y no se le aplicó ningún descuento."
	FinSi

