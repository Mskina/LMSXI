# Variables

# Sus nombres no pueden comenzar con un número
# En nuestro caso, como no llegaremos a ver clases,  los nombres de las variables comenzarán con una letras minúscula 
# El carácter guión-bajo (_) puede utilizarse en un nombre, para separar nombres con múltiples palabras: mi_nombre o velocidad_de_golondrina_sin_carga. 
# Los nombres de las variables pueden comenzar con un carácter guión-bajo, pero se reserva para código para librerías

nombre = "Ana" #string
edad = 48 #int
salario_bruto_anual = 24000.53 #float

print(nombre, "tiene", edad, "años y su salario bruto anual es", salario_bruto_anual, "€")

# https://docs.python.org/es/3/library/functions.html#type
print("El tipo de la variable nombre es:", type(nombre))
print("El tipo de la variable edad es:", type(edad))
print("El tipo de la variable salario_bruto_anual es:", type(salario_bruto_anual))