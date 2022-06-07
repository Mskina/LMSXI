lista_numeros = [1, 20, 300, 4]
lista_cadenas = ["a", "beta", [2, 1]]
vacia = []

print("Impresión de listas: -----------------------")
print(lista_numeros)
print(lista_cadenas)
print(vacia)

# Acceso al elemento de la primera posición
print("Acceso al elemento de la primera posición: -----------------------")
print(lista_numeros[0]) # primer índice es el 0
print(lista_cadenas[0])
print(vacia[0]) # no es posible porque está vacía


#Acceso con índices negativos: Se comienza por el final
print("Acceso con índices negativos: -----------------------")
print(lista_numeros[-2]) 
print(lista_cadenas[-2])


# Recorrido con un for
print("Recorrido con un for:  -----------------------")
for i in lista_numeros:
    print(i)
print("-------------------------")
for i in lista_cadenas:
    print(i)



#Acceso con índices fuera de rango
print("Acceso con índices negativos: -----------------------")
# print(lista_numeros[4])
# print(lista_cadenas[-4])

