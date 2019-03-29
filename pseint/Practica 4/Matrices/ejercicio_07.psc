Funcion result <- normalizarNumero (num, long)
	result = convertirATexto(num)
	
	Para i = 1 hasta long - Longitud(result) Con Paso 1 hacer
		result = '0' + result	
	FinPara
	
Fin Funcion

Algoritmo ejercicio_07
	//7- Los profesores de una materia de la Facultad de Ingenier’a necesitan llevar un registro de las
	//notas adquiridas por sus 30 alumnos durante el primer semestre para luego obtener un listado
	//de aprobados y desaprobados. Durante el periodo de clase se obtienen 4 notas, 2 por trabajos
	//pr‡cticos evaluativos y 2 por parciales. Las ponderaciones de cada nota son las siguientes:
		//a. Primer trabajo pr‡ctico evaluativo 10%
		//b. Segundo trabajo pr‡ctico evaluativo 15%
		//c. Primer parcial 25%
		//d. Segundo parcial integrador 50%
	//Una vez cargadas las notas, los profesores necesitan obtener por pantalla una lista de
	//aprobados y desaprobados, teniendo en cuenta que solo aprueban los alumnos con promedio
	//equivalente al 60% o m‡s de la media ponderada de sus notas del semestre.
	
	//Definicion de constantes
	CANT_ALUMNOS = 30
	CANT_NOTAS = 4
	//Indice Trabajo Practico 1
	ITP1 = 1
	//Indice Trabajo Practico 2
	ITP2 = 2
	//Indice Parcial 1
	IP1 = 3
	//Indice Parcial 2
	IP2 = 4
	
	//Lleno la planilla de los alumnos con numeros aleatorios
	Dimension planilla[CANT_ALUMNOS, CANT_NOTAS]
	Para i = 1 hasta CANT_ALUMNOS hacer
		planilla[i, ITP1] = Aleatorio(1, 10)
		planilla[i, ITP2] = Aleatorio(1, 10)
		planilla[i, IP1]  = Aleatorio(1, 10)
		planilla[i, IP2]  = Aleatorio(1, 10)
	FinPara
	
	//Mostrar planilla
	Para i = 1 hasta CANT_ALUMNOS hacer
		Para j = 1 hasta CANT_NOTAS Hacer
			Escribir Sin Saltar normalizarNumero(planilla[i,j], 2), "  "
		FinPara
		Escribir ""
	FinPara
	
	//Calcular promedio
	Dimension listaNotasFinales[CANT_ALUMNOS]
	Para i = 1 hasta CANT_ALUMNOS hacer
		listaNotasFinales[i] = planilla[i, ITP1] * 0.1 + planilla[i, ITP2] * 0.15 + planilla[i, IP1] * 0.25 + planilla[i, IP2] * 0.50
	FinPara
	
	//Mostrar resultados
	Para i = 1 hasta CANT_ALUMNOS hacer
		si listaNotasFinales[i] >= 6
			Escribir "Alumno ", i , " aprobo con ", listaNotasFinales[i]
		SiNo
			Escribir "Alumno ", i , " desaprobo con ", listaNotasFinales[i]
		FinSi
	FinPara
	
	
FinAlgoritmo
