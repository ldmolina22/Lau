Algoritmo TresEnRaya
	//Defino Variables
	Definir X, Jugador Como Entero
	Definir Posicion Como Entero
	Dimension Posicion[2]
	Definir Vector Como Caracter
	Definir coordenada Como Caracter
	Definir juegoEnCurso Como Logico
	Dimension Vector[3,3]
	//Estructura del Arreglo
	Para F = 1 Hasta 3 Con Paso 1 Hacer
		Para C = 1 Hasta 3 Con Paso 1 Hacer
			Vector[F,C] = " "
		FinPara
	FinPara
	//Tablero
	X = 1
	Jugador = azar(2) + 1
	juegoEnCurso = Verdadero
	Mientras X <= 9 y juegoEnCurso Hacer
		Escribir "Ingresa una posicion jugador", Jugador 
		Escribir Vector[1,1], "," , Vector[1,2], ",", Vector[1,3]
		Escribir Vector[2,1], "," , Vector[2,2], ",", Vector[2,3]
		Escribir Vector[3,1], "," , Vector[3,2], ",", Vector[3,3]
		Escribir "escribe una coordenada:"
		Leer coordenada
		Posicion[1]  = convertiranumero(subcadena(coordenada, 1, 1));
		Posicion[2]  = convertiranumero(subcadena(coordenada, 3, 3));
		//Condiciones de juego y victorias de ambos jugadores
		Si Posicion[1] > 0 y Posicion[1] < 4 y Posicion[2] > 0 y Posicion[2] < 4 Entonces
			Si Jugador == 1 Entonces
				Si Vector[Posicion[1],Posicion[2]] == " " Entonces
					Vector[Posicion[1],Posicion[2]] = "X"
					Jugador = 2
					// Check for win conditions for player 1
					Para F = 1 Hasta 3 Con Paso 1 Hacer
						Si Vector[F,1] = Vector[F,2] y Vector[F,2] = Vector[F,3] y Vector[F,1] <> " " Entonces
							Escribir "El jugador ", Jugador, " ha ganado"
							juegoEnCurso = Falso
						FinSi
					FinPara
					Para C = 1 Hasta 3 Con Paso 1 Hacer
						Si Vector[1,C] = Vector[2,C] y Vector[2,C] = Vector[3,C] y Vector[1,C] <> " " Entonces
							Escribir "El jugador ", Jugador, " ha ganado"
							juegoEnCurso = Falso
						FinSi
					FinPara
					Si Vector[1,1] = Vector[2,2] y Vector[2,2] = Vector[3,3] y Vector[1,1] <> " " Entonces
						Escribir "El jugador ", Jugador, " ha ganado"
						juegoEnCurso = Falso
					FinSi
					Si Vector[1,3] = Vector[2,2] y Vector[2,2] = Vector[3,1] y Vector[1,3] <> " " Entonces
						Escribir "El jugador ", Jugador, " ha ganado"
						juegoEnCurso = Falso
					FinSi
				SiNo
					Escribir "Esa Posición Está Ocupada"
				FinSi
			SiNo
				Si Vector[Posicion[1],Posicion[2]] == " " Entonces
					Vector[Posicion[1],Posicion[2]] = "O"
					Jugador = 1
					// Check for win conditions for player 2
					Para F = 1 Hasta 3 Con Paso 1 Hacer
						Si Vector[F,1] = Vector[F,2] y Vector[F,2] = Vector[F,3] y Vector[F,1] <> " " Entonces
							Escribir "El jugador ", Jugador, " ha ganado"
							juegoEnCurso = Falso
						FinSi
					FinPara
					Para C = 1 Hasta 3 Con Paso 1 Hacer
						Si Vector[1,C] = Vector[2,C] y Vector[2,C] = Vector[3,C] y Vector[1,C] <> " " Entonces
							Escribir "El jugador ", Jugador, " ha ganado"
							juegoEnCurso = Falso
						FinSi
					FinPara
					Si Vector[1,1] = Vector[2,2] y Vector[2,2] = Vector[3,3] y Vector[1,1] <> " " Entonces
						Escribir "El jugador ", Jugador, " ha ganado"
						juegoEnCurso = Falso
					FinSi
					Si Vector[1,3] = Vector[2,2] y Vector[2,2] = Vector[3,1] y Vector[1,3] <> " " Entonces
						Escribir "El jugador ", Jugador, " ha ganado"
						juegoEnCurso = Falso
					FinSi
				SiNo
					Escribir "Esa Posición Está Ocupada"
				FinSi
			FinSi
		SiNo 
			Escribir "Posisión Incorrecta";
		FinSi
		X = X + 1
	FinMientras
	//Mostrar el tablero con el resultado Final
	Escribir Vector[1,1], "," , Vector[1,2], ",", Vector[1,3]
	Escribir Vector[2,1], "," , Vector[2,2], ",", Vector[2,3]
	Escribir Vector[3,1], "," , Vector[3,2], ",", Vector[3,3]
FinAlgoritmo
