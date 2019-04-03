Algoritmo volumen_cilindro
	//7 - Crear  un  pseudocódigo  que  proporcione  el  volumen  de  un  cilindro,  conocidos  sualtura  y 
	//diámetro.
	//Nota:  considerar  que  los  datos  se  deben  pedir  en  metros  y  el  resultado  mostrarse  en  metros 
	//cúbicos.

	Definir altura, diametro Como Real
	Definir areaBase, volumen Como Real
	
	Escribir "Ingrese la altura del cilindro en mts. :"
	Leer altura
	Escribir "La altura ingresada es: ", altura, "mts."
	
	Escribir "Ingrese el diámetro del cilindro en mts. :"
	Leer diametro
	Escribir "El diámetro ingresado es: ", diametro, "mts. "
	
	areaBase = PI * (diametro / 2) ^ 2
	volumen = areaBase * altura
	
	Escribir "El volumen del cilindro es: ", volumen, " mts3"
	
FinAlgoritmo
