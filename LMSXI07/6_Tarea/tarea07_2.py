# El programa lee cadenas de texto hasta que el usuario escriba 'fin'
# Se define el caracter 'a' como no aceptado

CARACTER = "a" # Se define aquí para así no tener que insertarlo en el código
FIN = "fin" # Ídem; permite modificar la secuencia

lista_permitidas = [] # Aquí se almacenarán las cadenas OK
lista_descartadas =[] # Aquí se almacanarán las cadenas KO

print("Bienvenido a El Clasificador.","En este programa podrás escribir cuantas cadenas de texto consideres y las clasificaremos en tu lugar.", sep="\n", end="\n\n")
print(f"Si en algún momento quieres parar, escribe '{FIN}'") #El comportamiento de las f-string lo vi en páginas como https://realpython.com/python-f-strings/

while True:
    try :
        cadena = input("Introduce una cadena de texto:\n")
        if cadena == FIN :
            break;
        elif CARACTER in cadena :
            lista_descartadas.append(cadena)
        else :
            lista_permitidas.append(cadena)
    except :
        print(f"¿Querías salir? Para ello, escribe '{FIN}'")
    
cadenas_permitidas = len(lista_permitidas) # En lugar de hacer la consulta dos veces, creamos la variable aquí, de forma que podamos reutilizarla sin hacer un len() cada vez
cadenas_descartadas = len(lista_descartadas) # Ídem

print(f"\nCon el caráter '{CARACTER}' estando prohibido, se obtiene la siguiente clasificación:")

if cadenas_permitidas == 1 :
    print(cadenas_permitidas, "Cadena permitida: ", lista_permitidas)
else :
    print(cadenas_permitidas, "Cadenas permitidas: ", lista_permitidas)

if cadenas_descartadas == 1 :
    print(cadenas_descartadas, "Cadena descartada: ", lista_descartadas)
else :
    print(cadenas_descartadas, "Cadenas descartadas: ", lista_descartadas)
