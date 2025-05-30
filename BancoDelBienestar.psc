Proceso BancoDelBienestar
	
    Definir opcion, saldo, monto Como Real
    Definir servicio, cuentaDestino, continuar Como Cadena
    saldo <- 5000  // Saldo inicial
	
    Repetir
        Limpiar Pantalla
        Escribir "=== BANCO DEL BIENESTAR ==="
        Escribir "Saldo actual: $", saldo
        Escribir "Seleccione una opción:"
        Escribir "1. Pagar servicio"
        Escribir "2. Transferir a otro banco"
        Escribir "3. Salir"
        Leer opcion
		
        Segun opcion Hacer
            1:
                Escribir "Servicios disponibles:"
                Escribir "a) Luz"
                Escribir "b) Agua"
                Escribir "c) Internet"
                Leer servicio
Si servicio <> "a" Y servicio <> "b" Y servicio <> "c" Entonces
						Escribir "ERROR: Servicio no válido. Por favor ingrese a, b o c."
					FinSi
				Hasta Que servicio = "a" O servicio = "b" O servicio = "c"
				
                Escribir "Ingrese el monto a pagar:"
                Leer monto
				
                Si monto > 0 Y monto <= saldo Entonces
                    saldo <- saldo - monto
                    Escribir "Pago de servicio realizado con éxito."
                    Escribir "Nuevo saldo: $", saldo
                Sino
                    Escribir "Monto inválido o saldo insuficiente."
                FinSi
				
            2:
                Repetir
                    Escribir "Ingrese la cuenta CLABE del destinatario (18 dígitos):"
                    Leer cuentaDestino
					
                    Si Longitud(cuentaDestino) <> 18 Entonces
                        Escribir "??  Error: La cuenta CLABE debe tener exactamente 18 dígitos."
                    FinSi
                Hasta Que Longitud(cuentaDestino) = 18
				
                Escribir "Ingrese el monto a transferir:"
                Leer monto
				
                Si monto > 0 Y monto <= saldo Entonces
                    saldo <- saldo - monto
                    Escribir "Transferencia exitosa a la cuenta ", cuentaDestino
                    Escribir "Nuevo saldo: $", saldo
                Sino
                    Escribir "Monto inválido o saldo insuficiente."
                FinSi
				
            3:
                Escribir "Gracias por usar el Banco del Bienestar."
				
            De Otro Modo:
                Escribir "Opción inválida. Intente nuevamente."
        FinSegun
		
        Si opcion <> 3 Entonces
            Escribir "¿Desea realizar otra operación? (s/n):"
            Leer continuar
Si continuar <> "si" Y continuar <> "no" Entonces
					Escribir "ERROR: Opción no válida. Por favor escriba si o no."
				FinSi
			Hasta Que continuar = "si" O continuar = "no"
        FinSi
		
    Hasta Que opcion = 3 O continuar = "n"
	
FinProceso

