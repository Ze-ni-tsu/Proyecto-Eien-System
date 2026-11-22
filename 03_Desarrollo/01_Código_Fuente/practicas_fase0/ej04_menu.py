# Menú que se repite hasta elegir salir:
    # 1. Registrar paquete,
    # 2. Listar paquetes,
    # 3. Salir.
# Cada opción solo imprime un mensaje, y si la opción es inválida, avisa.

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
        break
    elif opcion == "2":
        print("Listando paquetes, un momento por favor...")
        break
    elif opcion == "3":
        print("Saliendo...")
        break
    else:
        print("Opción no válida. Intenta nuevamente")