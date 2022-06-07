# https://docs.python.org/es/3/tutorial/datastructures.html?highlight=list

lista_cadenas = ["a", "beta", [2, 1]]
vacia = []


vacia.append("z") #añade al final
print('vacia.append("z"):', vacia)

vacia.append(28)
print('vacia.append(28):', vacia)

vacia.extend(lista_cadenas) #xtiende la lista agregándole todos los ítems de la lista entre ()
print('vacia.extend(lista_cadenas():', vacia)

vacia.insert(2, "nuevo")
print('vacia.insert(2, "nuevo"):', vacia )

vacia.remove("nuevo")
print('vacia.remove("nuevo"):', vacia)

try: 
    vacia.remove("viejo")
    print('vacia.remove("viejo"):', vacia)
except:
    print("No ha sido posible eliminar el elemento")


vacia.pop()
print('vacia.pop():', vacia) #elimina la última pos.

vacia.pop(1)
print('vacia.pop(1):', vacia) #elimina la pos. 1 

indice = vacia.index("beta")
print("indice = ", indice)
try:
    indice = vacia.index("alfa")
    print("indice = ", indice)
except:
    print("No se encuentra el elemento alfa")

vacia.insert(0, "a") #insertamos una cadena "a" en el índice cero, además de la ya existente
print('vacia.insert("a"):', vacia)
print('vacia.count("a"): ', vacia.count("a")) #contamos cuántas cadenas "a" hay en la lista vacia
print('vacia.count("b"): ', vacia.count("b")) #contamos cuántas cadenas "b" hay en la lista vacia



vacia.clear() #elimina todos los elementos de la lista
print('vacia.clear():', vacia)