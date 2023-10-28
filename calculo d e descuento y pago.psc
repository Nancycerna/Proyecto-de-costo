	Algoritmo calculodescuentos
		CONST_DESCUENTO_30 = 0.30
		CONST_DESCUENTO_20 = 0.20
		CONST_DESCUENTO_10 = 0.10
		descuento = 0
		subtotal = 0
		total = 0
		
		Escribir "Ingrese el nombre del producto"
		Leer nombre_producto
		
		Escribir "Ingrese el precio del producto"
		Leer precio_producto
		
		Escribir "Ingrese la cantidad a comprar"
		Leer cantidad_comprada
		
		subtotal = precio_producto * cantidad_comprada
		
		Si cantidad_comprada >= 50 Entonces
			descuento = subtotal * CONST_DESCUENTO_30
		Sino
			Si cantidad_comprada >= 20 Entonces
				descuento = subtotal * CONST_DESCUENTO_20
			Sino
				Si cantidad_comprada >= 10 Entonces
					descuento = subtotal * CONST_DESCUENTO_10
				Sino
					descuento = 0
				Fin Si
			Fin Si
		Fin Si
		
		total = subtotal - descuento
		
		Escribir "Total a pagar ", total
		Escribir "Ingresa el monto pagado"
		Leer monto_pago
		
		Si monto_pago = total Entonces
			cs = 1
		Sino
			Si monto_pago > total Entonces
				cs = 2
			Sino
				Si monto_pago < total Entonces
					cs = 3
				Fin Si
			Fin Si
		Fin Si
		
		Segun cs Hacer
			1:
				Escribir "Gracias por su compra"
			2:
				cambio = monto_pago - total
				Escribir "Gracias por su compra"
			3:
				Escribir "Pago insuficiente, el total a pagar es ", total
			De Otro Modo:
				Escribir "Monto de pago inválido"
		Fin Segun
		
		Escribir "Resumen de compra"
		Escribir "Producto: ", nombre_producto
		Escribir "Cantidad comprada: ", cantidad_comprada
		Escribir "Precio del producto: ", precio_producto
		Escribir "Subtotal: ", subtotal
		
		Si descuento > 0 Entonces
			Escribir "Descuento aplicado: ", descuento
			Escribir "Total a pagar: ", total
			Escribir "Cambio: ", cambio
		Sino
			Escribir "Total a pagar: ", total
			Escribir "Cambio: ", cambio
			Escribir "Gracias por su compra"
		Fin Si
FinAlgoritmo
