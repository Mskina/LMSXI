# https://docs.python.org/es/3/library/stdtypes.html#typesseq-range
# range(stop)
# range(start, stop[, step])
# valores por defecto de start: 0 y  step: 1

print("for i in range(5): ---------------------------- Secuencia del 0 al 4:")
for i in range(5):
    print(i)

print("for i in range(-5): ---------------------------- Sin salida:")
for i in range(-5): # no crea ninguna salida # ir de 0 a -5 sumando de 1 en 1 no es posible
    print(i)

print("for i in range(-5, 0): ---------------------------- Secuencia del -5 al -1:")
for i in range(-5, 0): # del -5 al -1
    print(i)

print("for i in range(1, 11, 1): ---------------------------- Secuencia del 1 al 10:")
for i in range(1, 11, 1): # del 1 al 10
    print(i)

print("for i in range(1, 11, 2): ---------------------------- Secuencia del 1 al 10 de 2 en 2:")
for i in range(1, 11, 2): # del 1 al 10, mostrando de dos en dos
    print(i)