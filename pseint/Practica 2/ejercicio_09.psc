Algoritmo ejercicio_09
	//9 - Una  empresa  tiene  personal  de  distintas  áreas  con  distintas  condiciones  de  contratación  y 
	//formas  de  pago.  El  departamento  de  contabilidad  necesita  calcular  los  sueldos  semanales 
	//(lunes  a  viernes)  en  base  a  las  3  modalidades  de  sueldo:  comisión,  sueldo  fijo  +  comisión  y 
	//sueldo  fijo.    Para  salario  por  comisión  se  debe  ingresar  el  monto  de  venta  total.  El  40%  del 
	//monto  total  de  venta  corresponde  al  salario  del  empleado.    Para  la  condición  de  salario  fijo  +
	//comisión, se debe ingresar el valor de la hora, la cantidad de horas trabajadas semanalmente y 
	//el monto de venta total. En este tipo de contrato las horas extras no están contempladas fijando 
	//como máximo 40 horas por semana, las horas demás no se pagarán. La comisión por venta es 
	//del  25%  del  valor  de  venta  total.    Para  salario  fijo  se  debe  ingresar  el  valor  de  la  hora  y  la 
	//cantidad  de horas trabajadas, en el caso de exceder las 40 horas semanales, las horas extras 
	//se  deben  pagar  un  extra  del  50%  de  la  hora.  Realizar  un  menú  para  poder  elegir  el  tipo  de 
	//contrato.

	Definir totalVentas Como Real
	Definir empleado, modalidad Como Caracter
	
	Escribir "Ingrese Apellido y Nombre del empleado para calcular el salario semanal: "
	Leer empleado
	
	Escribir "Seleccione la modalidad de pago de ", empleado
	Escribir "(C): Le corresponde cobrar sólo comisión"
	Escribir "(S): sólo sueldo fijo"
	Escribir "(SC): sueldo fijo + comisión"
	Leer modalidad
	
	modalidad = minusculas(modalidad)
	
	Segun modalidad Hacer
		"c":
			Escribir "Ingrese el importe total correspondiente a las ventas de la semana de: ", empleado, " $ ";
			Leer totalVentas

			Escribir "El importe total a cobrar de ", empleado, " será de: $ ", totalVentas * 0.4;
		"s":
			Escribir "Ingrese la cantidad de horas que trabajo en la semana: ", empleado
			Leer cantidadHoras
			Escribir "Ingrese el valor de la hora de trabajo"
			Leer valorHora

			sueldoFijo = cantidadHoras * valorHoras 
			
			si cantidadHoras > 40 
				sueldoFijo = sueldoFijo + (cantidadHoras - 40) * (valorHora / 2)
			finSi

			Escribir "El importe total a cobrar por sueldo fijo para: ", empleado, " será de: $ ", sueldofijo
		"sc":
			Escribir "Ingrese el importe total correspondiente a las ventas de la semana de: ", empleado;
			Leer totalVentas
			Escribir "Ingrese la cantidad de horas que trabajo en la semana"
			Leer cantidadHoras
			Escribir "Ingrese el valor de la hora de trabajo"
			Leer valorHora

			si cantidadHoras > 40
				cantidadHoras = 40
			finSi

			comision = totalVentas * 0.25
			sueldoFijo = cantidadHoras * valorHora

			total = comision + sueldoFijo
			Escribir "El importe total a cobrar de: ", empleado, " será de: $ ", total
	Fin Segun 
	
FinAlgoritmo
