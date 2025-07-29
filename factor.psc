SubAlgoritmo x <- factorial ( n )
	Definir x Como Entero
	Si n = 0 Entonces
		x <- 1
	SiNo
		x <- n * factorial( n -1)
	Fin Si
Fin SubAlgoritmo

Algoritmo nnn
	Definir resultado, n   Como Entero
	Repetir
		Escribir " ingrese el numero " Sin Saltar
		Leer n
	Mientras Que n <= 0
	Escribir "el factorial de " ,n , " es " factorial(n)
FinAlgoritmo
