numeros = [i for i in range(11)]
print(numeros)

# Sería equivalente a lo siguiente:
numeros = []
for i in range(11):
    numeros.append(i)

print(numeros)

# Es posible realizar operaciones con la secuencia devuelta por range
# El resultado se almacena en la lista:
PORCENTAJE = 0.25
descuentos = [i * PORCENTAJE for i in range(11)]
print(descuentos)