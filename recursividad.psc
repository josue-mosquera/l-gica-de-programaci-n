// El factorial de un numero
SubAlgoritmo resul <- factorial ( n )
	Definir resul como entero // definicion de variables 
	Si n = 0 o n = 1 Entonces
		resul <- 1
	SiNo
		resul <- n * factorial(n-1)
	Fin Si
	
Fin SubAlgoritmo

Algoritmo tr
	definir num, resultado Como Entero
	Repetir
		Escribir " ingrese el numero "
		leer num
	Mientras Que num < 0
	resultado <- factorial(num)
	Escribir resultado
FinAlgoritmo
