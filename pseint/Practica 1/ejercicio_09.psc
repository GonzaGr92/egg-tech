Algoritmo ejercicio_09
	//9 - A partir de conocida una cantidad de días cree un algoritmo para convertir los días en horas, 
	//minutos y segundo.
	//Ejemplo: 1 día == 24 horas == 1440 min == 86400 segundos
	
	Definir cantDias, diasEnHoras, diasEnMinutos, diasEnSegundos como Real

	Escribir "Ingrese la cantidad de días que desea consultar: "
	Leer cantDias
	Escribir "La cantidad de días ingresada es: ", cantDias, " días."
	
	diasEnHoras = (cantDias * 24)
	diasEnMinutos = (cantDias * 1440)
	diasEnSegundos = (cantDias * 86400)
	
	Escribir cantDias " días equivale a: ", diasEnHoras, " horas, ",  diasEnMinutos, " minutos, ",  diasEnSegundos, " segundos."
	
FinAlgoritmo

