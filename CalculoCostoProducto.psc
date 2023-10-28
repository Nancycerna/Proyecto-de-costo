Algoritmo CalculoCostoProducto
    Definir precio_original, cupon_descuento, iva, cantidad_comprada, peso_del_paquete, destino_del_envio Como Real
	Definir  precio_con_descuento, precio_con_iva, descuento_por_cantidad, costo_de_envio, costo_final, precio Como Real
	Escribir "Ingresa nombre del produco"
	Leer nombre_del_prducto
	
    Escribir "Ingrese el precio original del producto: "
    Leer precio_original
	
    Escribir "Ingrese el porcentaje de descuento del cupón: "
    Leer cupon_descuento
    
	subtotal = precio_original - cupon_descuento
	Escribir "Subtotal del producto con cupon:" subtotal

	Escribir "Ingrese el porcentaje de impuesto (IVA): "
    Leer iva
	
    Escribir "Ingrese la cantidad acomprar: "
    Leer cantidad_comprada
	
    Escribir "Ingrese el peso del paquete en kg: "
    Leer peso_del_paquete
	
	Escribir "Lugar de destino"
	Leer destino
	
	Escribir "Ingrese la distancia del destino del envío en km: "
    Leer destino_del_envio
	
    precio_con_descuento <- precio_original * (1 - cupon_descuento / 100)
    precio_con_iva <- precio_con_descuento * (1 + iva / 100)
	
    Si cantidad_comprada >= 2 Entonces
        descuento_por_cantidad <- precio_con_iva * 0.05
    Sino
        descuento_por_cantidad <- 0
    FinSi
	
    costo_de_envio <- 10 + peso_del_paquete * 2
    costo_final <- (precio_con_iva - descuento_por_cantidad) * cantidad_comprada + costo_de_envio
	
	subtotal= costo_de_envio+(precio_original * cantidad_comprada)* (1 + iva / 100)
	
	Escribir "Nota de compra"
	Escribir "Nombre de producto: " nombre_del_prducto
	Escribir "Cantidad comprada; " cantidad_comprada
	Escribir "Precio de producto: " precio_original
	Escribir "Dirección: " destino
    Escribir "Desglose:"
	Escribir "  - Subtotal:  " + ConvertirATexto(precio_original*cantidad_comprada)
    Escribir "  - Cupón de Descuento: " + ConvertirATexto((precio_original*cantidad_comprada)-(precio_con_descuento*cantidad_comprada))
    Escribir "  - Impuestos: " + ConvertirATexto((precio_con_iva - precio_con_descuento) * cantidad_comprada)
    Escribir "  - Descuento por Cantidad: " + ConvertirATexto(descuento_por_cantidad * cantidad_comprada)
    Escribir "  - Costo de Envío: " + ConvertirATexto(costo_de_envio)
	Escribir "Costo Final del Pedido: " + ConvertirATexto(costo_final)
	Escribir " "
	Escribir "OTROS DETALLES DE SU COMPRA"
	Escribir "Costo sin descuento: " subtotal
	Escribir "Usted ahorró: $" subtotal-costo_final
	Escribir "Costo Final por Producto: " +ConvertirATexto(costo_final/cantidad_comprada)
FinAlgoritmo
