Algoritmo ejercicio_05
	//5 - Construir un programa que simule el funcionamiento de una calculadora que puede realizar
	//las  cuatro  operaciones  aritméticas  básicas  (suma,  resta,  producto  y  división)  con  valores 
	//numéricos  enteros.  El  usuario  debe  especificar  la  operación  con  el  primer  carácter  del  primer 
	//parámetro de la línea de comandos: S o s para la suma, R o r para la resta, P, p, M o m para el 
	//producto y D o d para la división. Los valores de los operandos se deben indicar en el segundo 
	//y tercer parámetros. Se recomienda el empleo de una sentencia segun_sea.
	
	Definir numeroA, numeroB Como Entero
	Definir operacion como Caracter
	
	Escribir "Ingrese la operación que desea realizar entre los dos números, ingresando S para SUMA, R para RESTA, M para MULTIPLICACION, y D para DIVISION.";
	Leer operacion
	
	Escribir "Ingrese el primer número: "
	Leer numeroA
	
	Escribir "Ingrese el segundo número: "
	Leer numeroB
	
	Segun operacion Hacer
		"s" :
			suma = numeroA + numeroB 
			Escribir "El resultado de la suma es igual a: ", suma;
		"r" :
			resta = numeroA - numeroB 
			Escribir "El resultado de la resta es igual a: ", resta;
		"m" :
			multiplicacion = numeroA * numeroB 
			Escribir "El resultado de la multiplicación es igual a: ", multiplicacion
		"d" :
			division = numeroA / numeroB 
			Escribir "El resultado de la división es igual a: ", division
		De Otro Modo:
			secuencia_de_acciones_dom
	Fin Segun

FinAlgoritmo
