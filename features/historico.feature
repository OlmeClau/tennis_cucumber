Feature: Historial de ultimas 3 partidas

Scenario: Mostrar ultima partida termina
	Given Se termina una partida con ganador 'jugador1'
	When inicio nueva partida
	Then deberia ver "Jugador 1 Ganó"

Scenario: Mostrar ultimas 2 partidas
	Given Se termina una partida con ganador 'jugador1'
	And Se termina una partida con ganador 'jugador2'
	When inicio nueva partida
	Then deberia ver "Jugador 2 Ganó"
	And deberia ver "Jugador 1 Ganó"

Scenario: Solo mostrar las últimas 3 partidas
	Given Se termina una partida con ganador 'jugador1'
	And Se termina una partida con ganador 'jugador1'
	And Se termina una partida con ganador 'jugador1'
	And Se termina una partida con ganador 'jugador1'
	And Se termina una partida con ganador 'jugador2'
	When inicio nueva partida
	Then deberia ver "Jugador 1 Ganó"
	And no deberia ver "Jugador 2 Ganó"
