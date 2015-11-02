Feature: Inicio de Juego
	Scenario: Juegan los grandes
		Given estoy en la pagina principal
		When ingreso "Federer" en el campo "jugador1"
		And ingreso "Nadal" en el campo "jugador2"
		And presiono el boton "Jugar"
		Then deberia ver el mensaje "Partida"
		And deberia ver "Federer vs Nadal"

	Scenario: Juegan personas normales
		Given estoy en la pagina principal
		When ingreso "Pedro" en el campo "jugador1"
		And ingreso "Pablo" en el campo "jugador2"
		And presiono el boton "Jugar"
		Then deberia ver el mensaje "Partida"
		And deberia ver "Pedro vs Pablo"
