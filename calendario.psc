// Algorimo que me permite mostrar la fecha en formato a�o mes y dia 
Algoritmo calendario
	definir fecha, a�o, mes, dia Como Real // definicion de variables 
	// proceso 
	fecha <- FechaActual()
	a�o <- trunc(fecha / 10000)
	mes <- trunc((fecha mod 10000) / 100)
	dia <- fecha mod 100
	// salida 
	Escribir " la fecha es ", dia, "/", mes, "/", a�o 
	
FinAlgoritmo
