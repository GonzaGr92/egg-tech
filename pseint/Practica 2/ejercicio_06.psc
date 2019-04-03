Algoritmo ejercicio_06
	//6 - La empresa “Te llevo a todos lados” está destinada al alquiler de autos, tiene un sistema de 
	//tarifa que consiste en cobrar el alquiler por hora. Si el cliente devuelve el auto hasta las 2 horas 
	//de uso el valor es de $400 pesos y la nafta va de regalo. Luego de transcurridas las 2 horas, se 
	//cobra 40 pesos por litro de nafta gastado, y la hora se fracciona en minutos, cobrando un total 
	//de $5,20 el minuto de uso.
	//Al  regresar  el  cliente  a  la  empresa,  se  ingresan  los  kilometros  recorridos  y  el  tiempo 
	//transcurrido y se le cobra el importe acordado
	
	Definir kmsRecorridos, tiempoTranscurrido Como Real
	
	Escribir "Ingrese el tiempo transcurrido en minutos desde que el cliente retir� el auto de la sucursal.";
	Leer tiempoTranscurrido
	
	Escribir "Ingrese los kilómetros recorridos durante el uso del automóvil."
	Leer kmsRecorridos

	Si tiempoTranscurrido <= 120 Entonces
		Escribir "El importe a cobrar es de $400 y el combustible está bonificado."
		total = 400;
	SiNo
		CONSUMO = 0.07  //(7 lts/100 km)
		litrosConsumdios = kmsRecorridos * CONSUMO
		gastoCombustible = litrosConsumdios * 40
		gastoTiempo = tiempoTranscurrido * 5.20

		Escribir "El importe a cobrar es de $: " gastoCombustible, " correspondientes al gasto de combustible, y $: ", gastoTiempo, " correspondientes al tiempo transcurrido. "
		total = gastoCombustible + gastoTiempo
	FinSi
	
	Escribir "El total a cobrar es de: $ ", total;
FinAlgoritmo
