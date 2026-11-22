# Convierte tu validación en la función validar_paquete(peso, direccion), que devuelve True o False.
# Úsala dentro del menú de ej04 (copia el menú a este archivo).

def validar_paquete(peso, direccion):
    if peso <= 0.0 or not direccion:
        print("Paquete rechazado")
    else:
        print("Paquete válido")

def seleccion_menu():
    print("Bienvenido/a al gestionador de paquetes.")
    print("Para avanzar selecciona:")
    print("1, para REGISTRAR PAQUETE")
    print("2, para LISTAR PAQUETES")
    print("3, para SALIR")

while True: 
    seleccion_menu()
    opcion = input("Elige una opción: ")
    if opcion == "1":
        print("Procediendo a registro de paquete, un momento por favor...")
        peso = float(input("Ingresa el peso del paquete: "))
        direccion = input("Ingresa la dirección de destino: ")
        validar_paquete(peso, direccion)
        break
    elif opcion == "2":
        print("Listando paquetes, un momento por favor...")
        break
    elif opcion == "3":
        print("Saliendo...")
        break
    else:
        print("Opción no válida. Intenta nuevamente")