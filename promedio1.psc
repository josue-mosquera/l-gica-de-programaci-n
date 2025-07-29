// calcular el promedio de notas 
Algoritmo promedio1
	Definir numnotas,notas, promedio, i, contenido como real // definicion de variables 
	// entrada 
	Escribir " cuantas notas desea calcular "
	leer numnotas 
	notas <- numnotas
	contenido <- 0
	// proceso - salida
	Para i <-1 Hasta notas Con Paso 1  Hacer
		Escribir " ingrese la nota ", i
		leer notas
		contenido <- contenido + notas 
	Fin Para
	promedio <-  contenido / numnotas
	Si promedio >= 3.0 Entonces
		Escribir " usted paso la materia con promedio de : " promedio
	SiNo
		Escribir " usted perdio la materia con promedio de : " promedio
	Fin Si
FinAlgoritmo
