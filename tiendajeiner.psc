//Este Algoritmo nos sirve para la gestión de un negocio, este puede tener un inventario, vender, agregar nuevos productos
//reabastecer existencias  y visualizar el total de las ventas diarias 

Algoritmo tienda 
	Definir nomProd,UniM, continuar, continuarVenta como cadena
	Definir cantProd,cantidad, vrTotal, vrProducto, totalVentasDia, codigoProd, nuevo, ventaActual, pago, vuelto Como entero
	Definir Prec, Cant, cantproducto, I, opcion, opcion_inventario,codigo, indice_producto, totalComprasDia Como entero
	Definir  salir, encontrado Como Logico
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
	Escribir "CÓDIGO | DESCRIPCIÒN         | UNIDAD | PRECIO | EXISTENCIAS"
	Escribir "-------|---------------------|--------|--------|------------"
	Para I <- 0 Hasta cantproducto - 1 Hacer
		Escribir codigo[I], " | ", nomProd[I], " | ", UniM[I], " | $", Prec[I], " | ", Cant[I]
	Fin Para
	
	//PROCESO-SALIDA
	// Visualizamos el menú principal
	totalVentasDia <- 0
	totalComprasDia <- 0
	Repetir
		Escribir "					MENÚ " 
		Escribir "Opción 1: Vender  "
		Escribir "Opción 2: Comprar "
		Escribir "Opción 3: Mostrar inventario  "
		Escribir "Opción 4: Total ventas del día "
		Escribir "Opción 5: agregar nuevo producto "
		Escribir "Opción 6: salir "
		leer opcion
		
		Segun opcion Hacer
			1://vender 
				continuar <- "S"
				ventaActual <- 0
				Repetir
					Escribir "Ingrese el código del producto: " Sin Saltar
					Leer codigoProd
					encontrado <- Falso
					Para I <- 0 Hasta cantproducto - 1 Hacer
						Si codigo[I] = codigoProd Entonces // comparamos los códigos establecidos con el código buscado 
							encontrado <- Verdadero
							Escribir "Descripción: " "|", nomProd[I],"|" ", Precio $", prec[I], "|" ", existencias ", cant[I]
							indice_producto <- I //indice_producto es el indice que utilizamos para ubicar el producto en el arreglo
							I <- cantProducto-1						
						Fin Si
					Fin Para
					
					Si encontrado= Verdadero Entonces
						Escribir "Ingrese la cantidad: " Sin Saltar
						Leer cantProd
						Si Cant[indice_producto] >= cantProd Entonces // comprobamos que tengamos suficientes unidades 
							vrTotal <- cantprod * Prec[indice_producto] // calculamos el valor 
							Cant[indice_producto] <- Cant[indice_producto] - cantProd// restamos la cantidad de unidades vendidas 
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
						Escribir "Ingrese el pago " Sin Saltar
						Repetir
							Leer pago
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
				
			2://comprar/reabastecer
				
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
						indice_producto <- I
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
					Cant[indice_producto] <- Cant[indice_producto] + cantidad  // Actualizo las existencias
					Escribir " Su compra tiene un total de: $",vrTotal
					Escribir "Existencias actualizadas"
				Sino
					Escribir "El código del producto no existe."
				Fin Si
				
				
			3://Visualizar las existencias (inventario)
				Escribir "CÓDIGO | NOMBRE DEL PRODUCTO | UNIDAD | PRECIO | EXISTENCIAS"
				Escribir "-------|---------------------|--------|--------|------------"
				Para I <- 0 Hasta cantproducto - 1 Hacer
					Escribir codigo[I], " | ", nomProd[I], " | ", UniM[I], " | $", Prec[I], " | ", Cant[I]
				Fin Para
			4://total de ventas
				Escribir "Total de ventas del día: $", totalVentasDia
				Escribir "Total de compras del día: $", totalComprasDia
			5:// agregar nuevo objeto
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
					Escribir codigo[I], " | ", nomProd[I], " | ", UniM[I], " | $", Prec[I], " | ", Cant[I]
				Fin Para
				cantproducto<-cantproducto+nuevo
				
			6:// salir 
				Escribir " haz salido con exito "
			De Otro Modo:
				Escribir "Opción incorrecta "
		Fin Segun
	Hasta Que opcion = 6
	
FinAlgoritmo