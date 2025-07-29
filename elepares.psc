// Algoritmo que me permite verificar cuntos elementos pares hay en un vector
Algoritmo elepares
	Definir pares, vector, i, num Como Entero // definicion de variables 
// entrada
	Escribir " ingrese la cantidad de elementos que tiene va a contener el vector "
	leer num
	// Proceso 
	pares <- 0
	Dimensionar vector[num]
	Para i<-1 Hasta num Con Paso 1 Hacer
		Escribir " ingrese el numero: " i 
		leer vector[i]
		Si vector[i] mod 2 = 0 Entonces
			pares <- pares + 1
			
		Fin Si
		
	Fin Para
	// salida
	Escribir " los numeros pares son: " pares 
	
FinAlgoritmo
