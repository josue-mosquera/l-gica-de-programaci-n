// Algorimo que me permite mostrar la fecha en formato año mes y dia 
Algoritmo calendario
	definir fecha, año, mes, dia Como Real // definicion de variables 
	// proceso 
	fecha <- FechaActual()
	año <- trunc(fecha / 10000)
	mes <- trunc((fecha mod 10000) / 100)
	dia <- fecha mod 100
	// salida 
	Escribir " la fecha es ", dia, "/", mes, "/", año 
	
FinAlgoritmo
