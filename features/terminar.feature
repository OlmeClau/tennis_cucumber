Feature: Terminar juego cuando un jugador gana

Scenario: Jugador 1 gana
	Given inicio partida con dos jugadores
	And jugador1 anota
	And jugador1 anota
	And jugador1 anota
	When jugador1 anota
	Then deberia ver "Ganador"
	And botones anotar deberian estar desabilititados
