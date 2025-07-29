Algoritmo reloj

	definir hora1,hora, minutos, seg Como entero
	Definir seguir Como Logico
	seguir <- Verdadero
	hora <- 0
	minutos <- 0
	seg <-0
	Mientras seguir  = Verdadero Hacer
		Borrar Pantalla
		Escribir " la hora es : " hora " : " minutos " : " seg
		hora1 <- HoraActual()
		hora <- trunc(hora1 / 10000)
		minutos <- trunc(hora1/ 100) MOD 100
		seg <- hora1 MOD 100
		esperar 1 segundo
	Fin Mientras
		
	 
	

	
FinAlgoritmo
