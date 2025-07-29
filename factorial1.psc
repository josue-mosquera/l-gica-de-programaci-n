Algoritmo factorial1
	definir num, factorial, i como entero
	Repetir
		Escribir " ingrese el numero " sin saltar
		leer num
	hasta Que num  >= 0
	factorial <- 1
	Si num = 0 Entonces
		factorial <- 1
	SiNo
//		
		Para i<-1 Hasta num Con Paso 1 Hacer
			factorial <- factorial * i 
			
		Fin Para
	Fin Si
	Escribir " el factorial de " num " es " factorial
FinAlgoritmo
