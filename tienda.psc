// Este Algoritmo nos sirve para la gestión de un miniercado, que tiene
// las siguientes funcionalidades: vender, comprar, llevar el inventario,
// agregar producto, visualizar las ventas  y compras diarias. 
Algoritmo tienda 
	// Declaración de variables
	Definir nomProd, uniM, continuar, continuarVenta como cadena
	Definir cantProd, cantidad, vrTotal, vrProducto Como Entero
	Definir totalVentasDia,codigoProd, nuevo, ventaActual Como Entero 
	Definir pago, vuelto, prec, cant, cantProducto, I, opcion Como Entero
	Definir codigo, indiceProducto, totalComprasDia Como entero
	Definir salir, encontrado Como Logico
	//ENTRADAS
	Repetir
		Escribir "¿Cuantos productos desea registrar? "Sin Saltar
		Leer cantproducto
	Hasta Que cantproducto>0
	
	Dimension Prec[100], Cant[100]
	Dimension  nomProd[100], UniM[100], codigo[100]
	
	// Cargamos las existencias (inventario) de productos
	Para I<-0 Hasta cantproducto-1 Hacer
		Escribir "Ingrese el código del producto ",I+1 ": "Sin Saltar
		Leer codigo[I]
		Escribir "Ingrese nombre del producto ",I+1,": "Sin Saltar
		leer nomProd[I]
		Escribir "Ingrese la unidad de medida del producto ", I+1, ": " Sin Saltar
		Leer UniM[I]
		Escribir "Ingrese Precio del produto ",I+1,":"sin saltar 
		Leer Prec[I]
		Escribir "ingrese su número de existencias ",I+1,": "Sin Saltar
		leer cant[I]
	FinPara
	Borrar Pantalla
	// Visualizamos las existencias (inventario)
	Escribir ""
	Escribir "      CÓDIGO     |     DESCRIPCIÓN  |     UNIDAD    |      PRECIO    | EXISTENCIAS |"
	Escribir " ----------------|------------------|---------------|----------------|------------"
	Para I <- 0 Hasta cantproducto - 1 Hacer
		Escribir  codigo[I], " | ", nomProd[I], " | ", UniM[I], " | $", Prec[I], " | ", Cant[I] " "
	escribir " --------------------------------------------------------------------------- "
	Fin Para
	
	//PROCESO-SALIDA
	// Visualizamos el menú principal
	totalVentasDia <- 0
	totalComprasDia <- 0
	salir <- Falso
	Repetir
		Escribir ""
		Escribir ""
		Escribir "                          MENÚ " 
		Escribir ""
		Escribir "                Opción 1: Vender  "
		Escribir ""
		Escribir "                Opción 2: Comprar "
		Escribir ""
		Escribir "                Opción 3: Mostrar inventario "
		Escribir ""
		Escribir "                Opción 4: Total ventas y compras del día "
		Escribir ""
		Escribir "                Opción 5: Agregar nuevo producto "
		Escribir ""
		Escribir "                Opción 6: Salir "
		Escribir ""
		Escribir "                Seleccione una opción " Sin Saltar
		leer opcion
		
		Segun opcion Hacer
			1:// Ventas 
				continuar <- "S"
				ventaActual <- 0
				Repetir
					Escribir "Ingrese el código del producto: " Sin Saltar
					Leer codigoProd
					encontrado <- Falso
					Para I <- 0 Hasta cantproducto - 1 Hacer
						Si codigo[I] = codigoProd Entonces // comparamos los códigos establecidos con el código buscado 
							encontrado <- Verdadero
							Escribir "Descripción: ", nomProd[I],", Precio $", prec[I], ", existencias ", cant[I]
							indiceProducto <- I //indiceProducto es el indice que utilizamos para ubicar el producto en el arreglo
							I <- cantProducto-1						
						Fin Si
					Fin Para
					
					Si encontrado= Verdadero Entonces
						Escribir "Ingrese la cantidad: " Sin Saltar
						Leer cantProd
						Si Cant[indiceProducto] >= cantProd Entonces // comprobamos que tengamos suficientes unidades 
							vrTotal <- cantprod * Prec[indiceProducto] // calculamos el valor 
							Cant[indiceProducto] <- Cant[indiceProducto] - cantProd// restamos la cantidad de unidades vendidas 
							Escribir "valor detalle $" vrTotal							
							ventaActual <- ventaActual + vrTotal // agregamos ls ventas a venta actual				
						Sino
							Escribir "Stock insuficiente."
						Fin Si
					Sino
						Escribir "El código del producto no existe."
					Fin Si
					
					continuarVenta <-"S"					
					Repetir
						Escribir "Desea continuar (S/N) " Sin Saltar
						Leer continuarVenta
					Hasta Que Mayusculas(continuarVenta) = "S" o Mayusculas(continuarVenta) = "N"
					pago <- 0					
					
					Si Mayusculas(continuarVenta) = "N" Entonces
						Escribir "Valor a pagar $" ventaActual
						
						Repetir
							Escribir "Ingrese el pago " Sin Saltar
							Leer pago
							Si pago<=0 Entonces
								Escribir " Valor no válido "								
							SiNo
								Si pago<ventaActual Entonces
									Escribir "Pago insuficiente faltan ", ventaActual-pago
									
								Fin Si								
							Fin Si							
						Hasta Que pago>=ventaActual
						
						
						Si pago > ventaActual Entonces
							vuelto <- pago - ventaActual 
							Escribir "Le quedan $ " vuelto
						Fin Si
						Escribir "Venta realizada con éxito."
						totalVentasDia <- totalVentasDia + ventaActual // agregamos ls ventas al total del día						
					Fin Si				
					
					Repetir
						Escribir "¿Desea continuar vendiendo? (S/N) " Sin Saltar
						Leer continuar
					Hasta Que Mayusculas(continuar) = "S" o Mayusculas(continuar) = "N"
					
				Hasta Que Mayusculas(continuar) = "N"
				
			2:// Compras
				
				Escribir "COMPRA "
				
				// reabastecer lso productos existentes 
				Repetir
					Escribir "Ingrese el código del producto : " Sin Saltar
					Leer codigoProd
				Hasta Que codigoProd>0
				
				encontrado <- Falso
				Para I <- 0 Hasta cantproducto - 1 Hacer //buscamos el producto
					Si codigo[I] = codigoProd Entonces
						encontrado <- Verdadero
						Escribir nomProd[I],", $", prec[I], ", existencias ", cant[I]
						indiceProducto <- I
					Fin Si
				Fin Para
				
				Si encontrado=Verdadero Entonces
					Repetir
						Escribir "Ingrese la cantidad: " Sin Saltar
						Leer cantidad
					Hasta Que cantidad>0
					Repetir
						Escribir "Ingrese el valor: " Sin Saltar
						Leer vrProducto
					Hasta Que vrProducto>0
					vrTotal <- cantidad * vrProducto // calculamos el valor  de la compra
					totalComprasDia <- totalComprasDia + vrTotal // agregamos las compras al total del día
					Cant[indiceProducto] <- Cant[indiceProducto] + cantidad  // Actualizo las existencias
					Escribir " Su compra tiene un total de: $",vrTotal
					
					Repetir
						Escribir "Ingrese el pago " Sin Saltar
						Leer pago
						Si pago<=0 Entonces
							Escribir " Valor no válido "
							
						SiNo
							Si pago<vrTotal Entonces
								Escribir "Pago insuficiente faltan ", vvtTotal-pago
								
							Fin Si
							
						Fin Si
						
					Hasta Que pago>=vrTotal					
					
					Si pago > vrTotal Entonces
						vuelto <- pago - vrTotal
						Escribir "Le quedan $ " vuelto
					Fin Si
					Escribir "Venta realizada con éxito."
					Escribir "Existencias actualizadas"
				Sino
					Escribir "El código del producto no existe."
				Fin Si	
				
			3:// Visualizar las existencias (inventario)
				
				Escribir "CÓDIGO | NOMBRE DEL PRODUCTO | UNIDAD | PRECIO | EXISTENCIAS"
				Escribir "-------|---------------------|--------|--------|------------"
				Para I <- 0 Hasta cantproducto - 1 Hacer
					Escribir codigo[I], " | ", nomProd[I], " | ", UniM[I], " | $", Prec[I], " | ", Cant[I]
				Fin Para
				
			4:// Total de ventas y compras
				Escribir "Total de ventas del día: $", totalVentasDia
				Escribir "Total de compras del día: $", totalComprasDia
				
			5:// Agregar producto
				Repetir
					Escribir  " Cuantos productos desea agregar: " Sin Saltar
					Leer nuevo
				Hasta Que nuevo>0
				
				Para I<-cantproducto Hasta cantproducto+nuevo-1 Hacer
					Escribir "Ingrese el código del producto ",I+1 ": "Sin Saltar
					Leer codigo[I]
					Escribir "Ingrese nombre del producto ",I+1,": "Sin Saltar
					leer nomProd[I]
					Escribir "Ingrese la unidad de medida del producto ", I+1, ": " Sin Saltar
					Leer UniM[I]
					Escribir "Ingrese Precio del produto ",I+1,":"sin saltar 
					Leer Prec[I]
					Escribir "ingrese su número de existencias ",I+1,": "Sin Saltar
					leer cant[I]
				FinPara
				
				Escribir "CÓDIGO | NOMBRE DEL PRODUCTO | UNIDAD | PRECIO | EXISTENCIAS"
				Escribir "-------|---------------------|--------|--------|------------"
				Para I <- 0 Hasta cantproducto + nuevo-1 Hacer
					Escribir codigo[I], " | ", nomProd[I], " | ", UniM[I], " | $", Prec[I]*1.2 " | ", Cant[I]
				Fin Para
				cantproducto<-cantproducto+nuevo
				
			6:// Salir 
				salir <- Verdadero
			De Otro Modo:
				Escribir "Opción incorrecta "
		Fin Segun
	Hasta Que salir=Verdadero
FinAlgoritmo
