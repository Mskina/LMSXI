# https://docs.python.org/es/3/tutorial/errors.html#tut-handling
try:
    lado = float(input("Indique el número de cm del lado del cuadrado: "))
    print("El área del cuadrado es:", lado ** 2) 
except:
    print("No ha podido realizarse la operación.")
    print("Recuerde, solo se aceptan números")