Feature: Marcador
	Scenario: Iniciar marcador
 		Given inicio partida con dos jugadores
		Then deberia ver marcador "0" para Jugador1
		And deberia ver marcador "0" para Jugador2

	Scenario: Jugador1 anota
	 	Given inicio partida con dos jugadores
		When jugador1 anota
		Then deberia ver marcador "15" para Jugador1
		And deberia ver marcador "0" para Jugador2

	Scenario: Jugador2 anota
		Given inicio partida con dos jugadores
		When jugador2 anota
		Then deberia ver marcador "0" para Jugador1
		And deberia ver marcador "15" para Jugador2
