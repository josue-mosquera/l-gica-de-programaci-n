Algoritmo Prueba1 
	
	Definir numero_estudiante, edades,i Como Entero
	Definir nombres, generos Como Caracter
	Repetir
		Escribir "Ingrese el numero de estudiantes:" Sin Saltar
		Leer numero_estudiante
	Mientras Que numero_estudiante < 1 
	
	Dimensionar edades[numero_estudiante]
	Dimensionar nombres[numero_estudiante]
	Dimensionar generos[numero_estudiante]
	
	
	Para i <- 1 Hasta numero_estudiante Con Paso 1 Hacer
		Escribir "ingrese su nombre del estudiante: ", i Sin Saltar
		Leer nombres[i]
	Fin Para
 
	
	Repetir
		Para i <- 1 Hasta numero_estudiante Con Paso 1 Hacer
			Escribir "ingrese la edad del del estudiante: ", i Sin Saltar
			Leer edades[i]
		Fin Para
    Mientras Que i < 15
	
	Repetir
		Para i <- 1 Hasta numero_estudiante Con Paso 1 Hacer
			Escribir "ingrese el genero del estudiante: ", i Sin Saltar
			Leer generos[i]
		Fin Para
    Hasta Que  generos[i] = "H" O generos[i] = "M"
	
FinAlgoritmo
