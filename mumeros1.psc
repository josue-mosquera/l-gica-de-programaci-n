// Algoritmo que nos permite ver cual es el mumero mayor en un vector
Algoritmo mumeros1
	definir num, mayor, i,vector  como entero // definicion de variables 
	Dimensionar vector[5] 
// entrada 
	Para i<-1 Hasta 5 Con Paso 1 Hacer
		Escribir " ingrese el numero ", i Sin Saltar
		leer vector[i]
	Fin Para
	// proceso
	mayor <- vector[1]
	Para i<-2 Hasta 5 Con Paso 1 Hacer
		Si vector[i]  > mayor Entonces
			mayor <- vector[i]
		Fin Si
	Fin Para
	// salida
	Escribir " el munero mayos es " mayor
FinAlgoritmo