Algoritmo sin_titulo
	Definir x, num, resultado Como Entero
	Repetir
		Escribir " ingrese el numero " Sin Saltar
		leer num
		resultado <- 1
	Mientras Que num  < 0
	Si num = 0 Entonces
		resultado <- 1
	SiNo
		Para x<-1 Hasta num  Con  paso 1 Hacer
			resultado <- resultado * num
			num <- num - 1
		Fin Para
	Fin Si
	Escribir resultado
FinAlgoritmo
