Algoritmo nota2 
	Definir  notas , resultado,i, suma, promedio, notas1 Como Real
	Dimensionar notas1[100]
	Escribir " ingrese el numero de notas que desea calcular : " Sin Saltar
	leer notas
	suma <- 0
	Para i <- 1 Hasta notas Con Paso 1 Hacer
		Escribir " ingrese la nota ", i
		Leer notas1[i]
		suma <- suma + notas1[i]
	Fin Para
	promedio <- suma / notas 
	Escribir " el promedio es " promedio 
FinAlgoritmo
