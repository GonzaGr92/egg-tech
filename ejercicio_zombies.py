def main():
    # Entrada de la muestra
    print('Ingrese la muestra:')
    muestra = input()

    # Convertir la entrada de la muestra a mayusculas
    muestra = muestra.upper()

    # Validar que las bases este dentro de A, B, C o D
    validar_bases(
        muestra=muestra,
    )

    # Obtener `m`, en el caso de que corresponda de acuerdo a la longitud de `muestra`
    m = determinar_dimension_matriz(
        muestra=muestra,
    )

    # Crear una matriz a partir de la cadena `muestra`
    # Metodo alternativo: convertir_muestra_a_matriz_alternativo(muestra, m)
    matriz = convertir_muestra_a_matriz(
        muestra=muestra,
        m=m,
    )

    # Mostrar `matriz` por consola
    # Metodo alternativo: mostrar_matriz_alternativo(matriz, m):
    mostrar_matriz(
        matriz=matriz,
    )

    # Checkear si las bases son iguales en la diagonal principal
    resultado_diagonal_principal = son_las_bases_iguales_en_diagonal_principal(
        matriz=matriz,
        m=m,
    )

    # Checkear si las bases son iguales en la diagonal inversa
    resultado_diagonal_inversa = son_las_bases_iguales_en_diagonal_inversa(
        matriz=matriz,
        m=m,
    )

    # Si ambas diagonales son iguales estamos en presencia de un zombie, 
    # en cualquier otro caso es una persona.
    #
    # | True  and True  |    => Zombie
    # | True  and False |    => Persona
    # | False and True  |    => Persona
    # | False and False |    => Persona

    if resultado_diagonal_principal and resultado_diagonal_inversa:
        print('Zombie test positivo')
    else:
        print('Zombie test negativo')


def validar_bases(muestra):
    """
    Funcion `validar_bases`. Valida si las bases ingresadas son correctas, puede
    lanzar Exception.
    Parametros:
        - (string) muestra
    """

    # Conversion
    # "AADDBBCC" => ['A', 'A', 'D', 'D', 'B', 'B', 'C', 'C']
    lista_de_bases = list(muestra)

    # Extraer cantidad de bases
    m = len(lista_de_bases)

    for i in range(0, m):
        # Checkear que cada una de las bases NO sean distinta de los posibles valores |A, B, C o D|
        if(
            lista_de_bases[i] != 'A'
            and lista_de_bases[i] != 'B'
            and lista_de_bases[i] != 'C'
            and lista_de_bases[i] != 'D'
        ):
            # Lanzar una excepcion si se encuentra un valor diferente de |A, B, C o D|
            raise Exception('Muestra invalida. Razon: Bases incorrectas')


def determinar_dimension_matriz(muestra):
    """
    Funcion `determinar_dimension_matriz`. Valida y determina si las cantidad de bases 
    ingresadas en la muestra es correcta, puede lanzar Exception.
    Parametros:
        - (string) muestra
    Retorno:
        - (int) valor de m
    """

    # Posibles dimesiones en matriz m x m |3, 4, 37|
    if len(muestra) == 3 * 3:
        return 3

    if len(muestra) == 4 * 4:
        return 4

    if len(muestra) == 37 * 37:
        return 37

    # Si no corresponde a ninguna de la dimensiones anteriores lanzar una excepcion
    raise Exception('Muestra invalida. Razon: Dimension incorrecta')


def convertir_muestra_a_matriz(muestra, m):
    """
    Funcion `convertir_muestra_a_matriz`. Convierte la `muestra` en una matriz.
    Parametros:
        - (string) muestra
        - (int) m
    Retorno:
        - (list) matriz que representa la muestra
    """

    matriz = []

    # Itera m veces correspondiente a las filas
    for i in range(0, m):
        # Separa en m bases la cadena i veces. Ejemplo (con m = 3)
        # 'AAABBBCCC' => 'AAA' 'BBB' 'CCC'
        # Ejemplo de indices [inicio_subcadena : fin_subcadena] para m = 3
        # (i = 0) => [inicio_subcadena = 0 * 3 = 0] [fin_subcadena = (0+1) * 3 = 3] => |0:3|
        # (i = 1) => [inicio_subcadena = 1 * 3 = 3] [fin_subcadena = (1+1) * 3 = 6] => |3:6|
        # (i = 2) => [inicio_subcadena = 2 * 3 = 6] [fin_subcadena = (2+1) * 3 = 9] => |3:9|
        subcadena = muestra[i * m: (i+1) * m]

        # Inserta en i una lista generada de la anterior subcadena
        # 'AAA' => ['A', 'A', 'A']
        matriz.insert(i, list(subcadena))

    # Finalmente retorna la matriz generada. Ejemplo:
    # [
    #   ['A', 'A', 'A'],
    #   ['B', 'B', 'B'],
    #   ['C', 'C', 'C'],
    # ]
    return matriz


def convertir_muestra_a_matriz_alternativo(muestra, m):
    """
    Funcion `convertir_muestra_a_matriz_alternativo`. Convierte la `muestra` en una matriz.
    Parametros:
        - (string) muestra
        - (int) m
    Retorno:
        - (list) matriz que representa la muestra
    """
    # Inicializar matriz de m x m con 0. Ejemplo para m = 3
    # | 0, 0, 0 |
    # | 0, 0, 0 |
    # | 0, 0, 0 |
    matriz = [[0 for _ in range(0, m)] for _ in range(0, m)]

    # Itera la cantidad de veces necesarias correspondiente a la cantidad de bases en la muestra
    for idx in range(0, len(muestra)):
        # i proporciona los indices para las filas, j proporciona los indices para las columnas.
        # Ejemplo para m = 3
        # (idx = 0) => [i = int(0 / 3) = 0] [j = 0 % 3 = 0] => |0, 0|
        # (idx = 1) => [i = int(1 / 3) = 0] [j = 1 % 3 = 1] => |0, 1|
        # (idx = 2) => [i = int(2 / 3) = 0] [j = 2 % 3 = 2] => |0, 2|
        # (idx = 3) => [i = int(3 / 3) = 1] [j = 3 % 3 = 0] => |1, 0|
        # (idx = 4) => [i = int(4 / 3) = 1] [j = 4 % 3 = 1] => |1, 1|
        # (idx = 5) => [i = int(5 / 3) = 1] [j = 5 % 3 = 2] => |1, 2|
        # (idx = 6) => [i = int(6 / 3) = 2] [j = 6 % 3 = 0] => |2, 0|
        # (idx = 7) => [i = int(7 / 3) = 2] [j = 7 % 3 = 1] => |2, 1|
        # (idx = 8) => [i = int(8 / 3) = 2] [j = 8 % 3 = 2] => |2, 2|
        i = int(idx / m)
        j = idx % m

        # Escribir en matriz[i][j] la base correspondiente
        matriz[i][j] = muestra[idx]

    # Finalmente retorna la matriz generada. Ejemplo:
    # [
    #   ['A', 'A', 'A'],
    #   ['B', 'B', 'B'],
    #   ['C', 'C', 'C'],
    # ]
    return matriz


def mostrar_matriz(matriz):
    """
    Funcion `mostrar_matriz`. Muestra una matriz.
    Parametros:
        - (list) matriz
    """

    print('- Muestra en forma de matriz')
    print('*********')

    # for each para fila
    for fila in matriz:
        print('|', end=' ')

        # for each para columna
        for columna in fila:
            print(columna, end=' ')

        print('|', end=' ')
        print(flush=True)

    print('*********')


def mostrar_matriz_alternativo(matriz, m):
    """
    Funcion `mostrar_matriz_alternativo`. Muestra una matriz.
    Parametros:
        - (list) matriz
        - (int) m
    """

    print('- Muestra en forma de matriz')
    print('*********')

    for i in range(0, m):
        print('|', end=' ')

        # for each para columna
        for j in range(0, m):
            print(matriz[i][j], end=' ')

        print('|', end=' ')
        print(flush=True)

    print('*********')


def son_las_bases_iguales_en_diagonal_principal(matriz, m):
    """
    Funcion `son_las_bases_iguales_en_diagonal_principal`. Checkea que todos las bases
    sean iguales en la diagonal principal
    Parametros:
        - (list) matriz
        - (int) m
    Retorno:
        - (bool) Verdadero si todas las bases son iguales
    """

    # El primer elemento sobre la diagonal principal
    base_de_referecia = matriz[0, 0]

    # Si el bucle detecta que alguna base de la diagonal pricipal es diferente a
    # la base de referencia retorna falso.
    for i in range(0, m):
        for j in range(0, m):

            # Cuando i == j esta sobre la diagonal principal (*)
            # [
            #   *(0,0)   (0,1)   (0,2)
            #    (1,0)  *(1,1)   (1,2)
            #    (2,0)   (2,1)  *(2,2)
            # ]
            if i == j and matriz[i][j] != base_de_referecia:
                return False

    return True


def son_las_bases_iguales_en_diagonal_inversa(matriz, m):
    """
    Funcion `son_las_bases_iguales_en_diagonal_inversa`. Checkea que todos las bases
    sean iguales en la diagonal inversa
    Parametros:
        - (list) matriz
        - (int) m
    Retorno:
        - (bool) Verdadero si todas las bases son iguales
    """

    # El primer elemento sobre la diagonal inversa
    base_de_referecia = matriz[0, m - 1]

    # Si el bucle detecta que alguna base de la diagonal inversa es diferente a
    # la base de referencia retorna falso.
    for i in range(0, m):
        for j in range(0, m):
            # Cuando i + j = m - 1 esta sobre la diagonal inversa (*)
            # [
            #    (0,0)   (0,1)  *(0,2)
            #    (1,0)  *(1,1)   (1,2)
            #   *(2,0)   (2,1)   (2,2)
            # ]
            #
            # Para m = 3 =>
            # | 0 + 2 == 3 - 1 |
            # | 1 + 1 == 3 - 1 |
            # | 2 + 0 == 3 - 1 |

            if i + j == m - 1 and matriz[i][j] != base_de_referecia:
                return False

    return True


# Incio del programa comando: `python ejercicio_zombies.py`
if __name__ == "__main__":
    main()
