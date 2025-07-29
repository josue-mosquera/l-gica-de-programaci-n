Algoritmo personas_por_piso
	definir edificio,i,cantpersonas,nropisos Como Entero
	Repetir
		Escribir " ingrese el numero de pisos: " Sin Saltar
		leer nropisos
	Hasta Que  nropisos > 0
	
	Dimensionar edificio[nropisos]
	
	cantpersonas <- 0
	Para i<-0 Hasta nropisos-1 Con Paso 1 Hacer
		Escribir " escribe la cantidad de personas en el piso ",i+1 ":" Sin Saltar
		leer edificio[i]
		cantpersonas <- cantpersonas + edificio[i]
	Fin Para
	Escribir " en el edificio hay ",cantpersonas, " personas "
	Escribir " el promedio de personas por piso ", cantpersonas / nropisos
	Para i<-0 Hasta nropisos-1 Con Paso 1 Hacer
		Escribir " piso ",i+1, " hay " edificio[i], " personas " 
	Fin Para
FinAlgoritmo
