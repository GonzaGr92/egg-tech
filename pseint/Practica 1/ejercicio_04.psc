Algoritmo ejercicio_04
	//4 - Calcular  las  calificaciones  de  un  alumno.  La  nota  final  de  cada  alumno  se  calcula  según  el 
	//siguiente  criterio:  la  parte  práctica  vale  el  10%;  la  parte  de  problemas  vale  el  50%  y  la  parte 
	//teórica  el  40%.  El  algoritmo  leeráel  nombre  del  alumno,  las  tres  notas,  escribiráel  resultado. 
	//Las notas deben estar entre 0 y 10

	//Variables de lectura
	Definir notaFinal, notaPractica, notaProblemas, notaTeoria Como Real
	Definir nombreAlumno Como Cadena

	//Variables de calculo
	Definir promedioPractica, promedioProblemas, promedioTeoria, notaFinal como Real
	
	Escribir  "Ingrese Nombre y Apellido del/a alumno/a: "
	Leer nombreAlumno

	Escribir "Alumno: ", nombreAlumno
	
	Escribir "Ingrese la nota correspondiente a la parte Práctica: "
	Leer notaPractica
	Escribir "El valor de la nota práctica es de: ", notaPractica
	
	Escribir "Ingrese la nota correspondiente a la parte de Problemas: "
	Leer notaProblemas
	Escribir "El valor de la nota práctica es de: ", notaProblemas
	
	Escribir "Ingrese la nota correspondiente a la parte teórica: "
	Leer notaTeoria
	Escribir "El valor de la nota de la parte teórica es de: ", notaTeoria
		
	//Calculo de promedios
	promedioPractica = (10 * notaPractica) / 100
	promedioProblemas = (50 * notaProblemas) / 100
	promedioTeoria = (40 * notaTeoria) / 100
	notaFinal = promedioPractica + promedioProblemas + promedioTeoria
	
	Escribir "La nota final de: ", nombreAlumno, " es: ", notaFinal
	
FinAlgoritmo
