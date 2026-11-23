# El programa completo:
    # el menú con la validación, donde Registrar guarda el paquete en paquetes.csv y Listar lo lee y lo muestra.
    # Al cerrar y abrir de nuevo, los datos siguen ahí.

from pathlib import Path
import csv

CARPETA_ACTUAL = Path(__file__).resolve().parent
RUTA_CSV = CARPETA_ACTUAL / "paquetes.csv"
        
def guardar_paquete(destinatario, peso, direccion):
    with open(RUTA_CSV, "a", newline="", encoding="utf-8") as archivo:
        escritor = csv.writer(archivo)
        escritor.writerow([destinatario, peso, direccion])
        
def validar_paquete(destinatario, peso, direccion):
    if not destinatario or peso <= 0.0 or not direccion:
        print("Paquete rechazado")
    else:
        guardar_paquete(destinatario, peso, direccion)
        
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
        destinatario = input("Ingresa el nombre del destinatario: ")
        peso = float(input("Ingresa el peso del paquete: "))
        direccion = input("Ingresa la dirección de destino: ")
        validar_paquete(destinatario, peso, direccion)
    elif opcion == "2":
        print("Listando paquetes, un momento por favor...")
        with open(RUTA_CSV, "r", newline="", encoding="utf-8") as archivo:
            lector = csv.reader(archivo)
            for fila in lector:
                print(fila)
    elif opcion == "3":
        print("Saliendo...")
        break
    else:
        print("Opción no válida. Intenta nuevamente")