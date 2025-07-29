# programa que me permite llevar un reguistro de estudiantes

while True:
    try:
        edad = int(input("Ingrese su edad debe ser mayor a 18 "))
        if edad > 18:
            break

    except:
        print("Su edad debe ser mayor a 18 pendejo ")
print(edad)
