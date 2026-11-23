# Crea una lista con 3 paquetes (cada uno es un diccionario con id, peso_kg y destinatario).
# Recórrela con for, imprime cada uno y muestra el peso total.


lista_envios = [
    {
        'id': 1,
        'peso_kg': 2.5,
        'destinatario': "Angela Romero"
    },
    {
        'id': 2,
        'peso_kg': 19.2,
        'destinatario': "Monster Energy"
    },
    {
        'id': 3,
        'peso_kg': 85.2,
        'destinatario': "JASA"
    }
]

total_kg = sum(peso['peso_kg'] for peso in lista_envios)

for entrega in lista_envios:
    for clave, valor in entrega.items():
        print(f"{clave}: {valor}")
    print("---")
    
print(f"El peso total a transportar es de: {total_kg}")