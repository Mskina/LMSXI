# Podemos pedir introducción de datos por teclado con la función input()
# https://docs.python.org/es/3/library/functions.html#input
# Si usa como parámetro una cadena, se muestra por salida estándar (terminal)
# antes de esperar la entrada del usuario
nombre = input("Escriba aquí su nombre:\n") 
print("Su nombres es:", nombre, ". Introduza su edad:") 

# Se puede usar sin parámetros y simplemente espera un dato del usuario por la entrada estándar (teclado)
edad = input()

print("Tiene usted", edad, "años")

