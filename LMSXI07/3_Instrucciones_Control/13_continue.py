# continue para pasar a la siguiente iteración sin terminar la ejecución
# de la iteración actual 
lista = [1, 1, 2, 3, 5, 8, 13]
for i in lista:
    if i % 2 == 1:
        continue #Si el elemento es impar, no lo imprimimos, pero seguimos iterando por los elementos de lista
    else:
        print(i)