def mostrar_tablero(tablero):
    for fila in tablero:
        print(' | '.join(fila))
        print('-' * 9)

def verificar_ganador(tablero):
    # Verificar filas, columnas y diagonales
    for i in range(3):
        if tablero[i][0] == tablero[i][1] == tablero[i][2] != ' ' or tablero[0][i] == tablero[1][i] == tablero[2][i] != ' ':
            return True
    if tablero[0][0] == tablero[1][1] == tablero[2][2] != ' ' or tablero[0][2] == tablero[1][1] == tablero[2][0] != ' ':
        return True
    return False

def verificar_empate(tablero):
    for fila in tablero:
        if ' ' in fila:
            return False
    return True
    
def jugar():
    tablero = [[' ']*3 for _ in range(3)]
    jugador = 'X'

    while True:
        mostrar_tablero(tablero)
        while True:
            coordenadas = input('Introduce las coordenadas (fila,columna) para ' + jugador + ': ')
            fila, col = map(int, coordenadas.split(','))
            fila-=1
            col-=1
            if 0 <= fila <= 2 and 0 <= col <= 2 and tablero[fila][col] == ' ':
                break
            print('Movimiento inválido, intenta de nuevo.')
        tablero[fila][col] = jugador

        if verificar_ganador(tablero):
            mostrar_tablero(tablero)
            print('¡El jugador ' + jugador + ' gana!')
            break
        elif verificar_empate(tablero):
            mostrar_tablero(tablero)
            print('¡Es un empate!')
            break

        jugador = 'O' if jugador == 'X' else 'X'

jugar()