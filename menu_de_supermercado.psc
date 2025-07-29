Algoritmo menu_de_supermercado
	
	Definir numestudiante, edades, i, opci Como Entero
	Definir peso Como Real
	Definir nombres Como Caracter
	
	Repetir
		Escribir  "Ingrese el numero de estudiantes debe ser mayor a 1"
		Leer numestudiante
	Mientras Que numestudiante < 1
	
	Dimensionar nombres[numestudiante] 
	Dimensionar edades[numestudiante]
	Dimensionar peso[numestudiante]
	
	Para i<-1 Hasta numestudiante Con Paso 1 Hacer
		Escribir "Ingrese el nombre del estudiante ", i 
		Leer nombres[i]
		
		Repetir
			Escribir "ingrese la edad del estudiante ", i
			Leer edades[i]
		Hasta Que edades[i] > 10
		
		
		Escribir "Ingrese el peso del estudiante "
		Leer peso[i]
	Fin Para
	
	Repetir
		Escribir "=================================================="
		Escribir "Menu de opciones"
		Escribir "1: nombres "
		Escribir "2: edades "
		Escribir "3: peso "
		Escribir "4: salir "
		Leer opci
		
		Segun opci Hacer 
			1:
				Para i<-1 Hasta numestudiante Con Paso 1 Hacer
					Escribir "nombre: " nombres[i] ," " i
				Fin Para
			2:
				Para i<-1 Hasta numestudiante Con Paso 1 Hacer
					Escribir"edad: " edades[i] ," " i " años"
				Fin Para
			3:
				Para i<-1 Hasta numestudiante Con Paso 1 Hacer
					Escribir"peso: " peso[i] ," " i " kg"
				Fin Para
			4:
				Escribir "Saliendo de aqui"
			De Otro Modo:
				Escribir "Opcion incorrecta intenta nuevamente "
				
		Fin Segun
	Hasta Que opci = 4	
	
	
	
	
FinAlgoritmo
