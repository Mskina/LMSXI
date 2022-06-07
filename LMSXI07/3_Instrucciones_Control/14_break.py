# break: sentencia para salir fuera de un bucle
lista = [1, 1, 2, 3, 5, 8, 13]
for i in lista:
    if i >= 3:
        break #si encontramos un número >= 3, salimos del bucle   
    print(i)
print("Fin bucle")