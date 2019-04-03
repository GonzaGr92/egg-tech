Algoritmo ejercicio_01
	//1 - Dadas  dos  variables  numéricas  A  y  B,  que  el  usuario  debe  teclear, se  pide  realizar  un 
	//algoritmo  que  intercambie  los  valores  de  ambas  variables  y  muestre  cuánto  valen  al  final  las 
	//dos variables (recuerda la asignación)

	Definir numeroA, numeroB, numeroC Como Entero
	Escribir "Ingrese el valor de A"
	Leer  numeroA
	Escribir "El valor ingresado de A=", numeroA
	
	Escribir "Ingrese el valor de B"
	Leer  numeroB
	Escribir "El valor ingresado de B=", numeroB
	
	numeroC = numeroA
	numeroA = numeroB
	numeroB = numeroC
	
	Escribir "El valor de A= ", numeroA
	Escribir  "El valor de B= ", numeroB
	
FinAlgoritmo
