Algoritmo registro_de_estudiantetes
	
	Definir  numestudiantes, edades, i, cantihombres, cantimujeres Como entero
	Definir  nombres, generos Como caracter
	Definir edadtotal, promedio, porcenhombres, porcemujeres Como real
	
	

	Repetir
		Escribir "Ingrese el numero de estudiantes"
		Leer numestudiantes
	Mientras Que numestudiantes < 1
	
	Dimensionar nombres[numestudiantes] 
	Dimensionar edades[numestudiantes] 
	Dimensionar generos[numestudiantes]
	
	Para i<-1 Hasta numestudiantes Con Paso 1 Hacer
		Escribir "Ingrese el nombre del estudiante ",i
		Leer nombres[i]
		
		Repetir
			Escribir "Ingrese la edad del estudiante ",i
			Leer edades[i]
		Mientras Que edades[i] < 15
		
		Repetir
			Escribir "Ingrese el genero del estudiante (H O M) ",i
			Leer generos[i]
			generos[i] <- Mayusculas(generos[i])
		Hasta Que generos[i] = "H" o generos[i] = "M"
	Fin Para
	
	Para i <-1 Hasta numestudiantes Con Paso 1 Hacer
		edadtotal <- edadtotal + edades[i] 
		promedio <- edadtotal / numestudiantes
	Fin Para
	
	Para i<-1 Hasta numestudiantes Con Paso 1 Hacer
		Si generos[i] = "H" Entonces
			cantihombres <- cantihombres + 1
		SiNo
			cantimujeres <- cantimujeres + 1 
		Fin Si
		
		Si generos[i] = "H" Entonces
			porcenhombres <- cantihombres * 100 / numestudiantes
		SiNo
			porcemujeres <- cantimujeres * 100 / numestudiantes
		Fin Si
	Fin Para
	
	Para i<-1 Hasta numestudiantes Con Paso 1 Hacer
		Si edades[i] > promedio Entonces
			Escribir nombres[i]  , ": edad: " , edades[i] , " genero " , generos[i] ": tu estas por arriba del promedio que es de ", promedio,"años"
		FinSi
		
		si edades[ i ] < promedio Entonces
				Escribir nombres[i] , ": edad: " , edades[i] , " genero: " ,  generos[i] ": tu estas por abajo del promedio que es de ", promedio, "años"
			FinSi
			
		Si edades[i] = promedio Entonces
					
			Escribir nombres[i] , ": edad: " ,  edades[i] , " genero: " ,  generos[i] ": tu estas igual al promedio que es de ", promedio, "años"
		FinSi
	
	Fin Para
	
	Escribir "La cantidad de hombres es de " cantihombres 
	Escribir "La cantidad de mujeres es de " cantimujeres 
	Escribir "El porcentaje de hombres es de " porcenhombres," %"
	Escribir "EL porcentaje de mujeres es de " porcemujeres," %" 
	
	
FinAlgoritmo
