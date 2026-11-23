# La misma validación, pero pidiendo el peso y la dirección con input().

peso_kg = float(input("Ingresa el peso del paquete: "))
direccion = str(input("Ingresa la dirección de destino: "))

if peso_kg <= 0.0 or not direccion:
    print("Rechazado")
else:
    print("Válido")