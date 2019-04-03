Algoritmo ejercicio_04
   //4 - Determinar los valores de A,B,C y D después de la ejecución de las siguientes instrucciones:

	Definir A, B, C, D como Entero
	
	A = 1
 	B = 4
	C = A + B 			// (1 + 4) = 5
	D = A - B 			// (1 - 4) = -3

	A = C + 2 * B 		// 5 + (2 * 4) = 13
	B = C + B 			// 5 + 4 = 9
	C = A * B 			// 13 * 9 = 117
	D = B + D  			// 9 + (-3) = 6
	A = D + C  			// 6 + 117 = 123
	
	Si C > D entonces 	// 117 > 6
		C = A - D		// 123 - 6 = 117
	SiNo
		C = B - D
	FinSi
	
	Escribir "A: ", A	//123
	Escribir "B: ", B	//9
	Escribir "C: ", C	//117
	Escribir "D: ", D	//6

FinAlgoritmo
