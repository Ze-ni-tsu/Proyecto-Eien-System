# Con las variables peso_kg y direccion escritas por ti, imprime «rechazado» si el peso es ≤ 0 o la dirección está vacía. Si no, imprime «válido». Pruébalo cambiando los valores.

peso_kg = float(input("Ingresa el peso del paquete: "))
direccion = str(input("Ingresa la dirección de destino: "))

if peso_kg <= 0.0 or not direccion:
    print("Rechazado")
else:
    print("Válido")