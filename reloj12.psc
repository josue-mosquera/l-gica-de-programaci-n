Algoritmo reloj
	definir hora1, hora, minuto, segund Como entero
	definir  seguir Como Logico
	seguir <- Verdadero
	hora <- 0 
	minuto <- 0 
	segund <- 0
	
	
	Mientras seguir = Verdadero
		Borrar Pantalla
		Escribir hora,":" minuto,":" segund
		
		hora1 <-HoraActual()
		hora <- trunc(hora1/ 10000)
		minuto <- trunc(hora1 / 100) mod 100
		segund <- hora1 mod 100
		
		
		esperar 1 segundo
	FinMientras
	
FinAlgoritmo
