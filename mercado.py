while (
    True
):  # validamos la entrada, asegurando que el numero de estudiantes sea mayor a 10
    try:
        numestudiantes = int(
            input("\nIngrese el numero de estudiantes debe ser mayor a 2:")
        )
        if numestudiantes < 1:
            print(" el numero de estudisntes debe ser maor a 10")
        else:
            break
    except:  # le enviamos un mensaje al usuario que debe ingresar numeros
        print(
            "deben ingreasr el numero de estudiates en numero, no con letras o simbolos"
        )

# declaramos las listas donde se va a almacenar la informacion
nombres = []
edades = []
pesos = []
print("=====================================================================")
# utilizamos un bucle for para capturar todos los nombres,edades y pesos de los estudiantes
for i in range(numestudiantes):
    nombre = input("Ingrese el nombre del estudiante: ")
    nombres.append(nombre)
    """"
    con la funcion append lo que hacemos es añadirle es
    el nombre del estudiante a las lista que definomos anteriormente
    """
    while (
        True
    ):  # validamos la entrada, asegurando que el numero de estudiantes sea mayor a 10
        try:
            edad = int(input("Ingrese la edad del estudiante debe ser mayor 10:"))
            edades.append(edad)
            """"
            con la funcion append lo que hacemos es añadirle es
            el nombre del estudiante a las lista que definomos anteriormente
            """
            if edad < 10:
                print("por favor ingresa la edad, que debe ser mayor a 10 años")
            else:
                break
        except:  # le enviamos un mensaje al usuario que debe ingresar numeros
            print("la edad debe de escribirse en numero no en letras o simbolos")
    while True:
        try:
            pes = int(input("Ingrese el peso del estudiante :"))
            pesos.append(pes)
            """
            con la funcion append lo que hacemos es añadirle es
            el nombre del estudiante a las lista que definomos anteriormente
            """
            if pes < 0:
                print("debes de ingresar un numero positivo")
            else:
                break
        except:
            print("por favor ingresa un numero, no letras")
while True:
    print("==================================================================")
    print("\n====MENU DE OPCIONES==== ")
    print("\n1: Mostrar los nombres")
    print("\n2: mostraslas edades")
    print("\n3: mostrar los pesos")
    print("\n4: salir")

    opcion = input("\ningrese su opcion:")

    if opcion == "1":
        for i, nombre in enumerate(nombres, start=1):
            print(f"\nnombres {i}: {nombre}")

    elif opcion == "2":
        for i, edad in enumerate(edades, start=1):
            print(f"\nedad {i}: {edad} años")

    elif opcion == "3":
        for i, peso in enumerate(pesos, start=1):
            print(f"\npeso {i}: {peso} kg")

    elif opcion == "4":
        print("programa terminado")
        break
