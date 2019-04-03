Algoritmo ejercicio_10
	//10 - Pedir dos números y mostrar un menú para elegir qué operación se quiere realizar (suma, 
	//resta, multiplicación y división). Tenga en cuenta que no se puede realizar la división por cero.
	
	Definir numeroA, numeroB, resultado como Real
	Definir operacion como Caracter
	
	Escribir  "Ingrese el primer valor: "
	Leer numeroA
	Escribir "Ingrese el segundo valor: "
	Leer numeroB
	
	Escribir "Elija la operación que desea realizar: suma, resta, multiplicacion o division."
	Leer operacion
	operacion = minusculas(operacion)
	
	Segun operacion Hacer
		"suma":
			Escribir "El resultado de la suma entre: ", numeroA, " y ", numeroB, " es: ", numeroA+numeroB
		"resta":	
			Escribir "El resultado de la resta entre: ", numeroA, " y ", numeroB, " es: ",  numeroA-numeroB
		"multiplicacion" o "multiplicación":
			Escribir "El resultado de la multiplicación entre: ", numeroA, " y ", numeroB, " es: ", numeroA*numeroB
		"division" o "división":
			si numeroB != 0
				Escribir "El resultado de la división entre: ", numeroA, " y ", numeroB, " es: ", numeroA/numeroB
			siNo
				Escribir "No se puede realizar la division por cero"
			finSi
	Fin Segun
	
FinAlgoritmo
