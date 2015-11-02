Feature: Volver a empezar
	Scenario: nuevo juego
 		Given inicio partida con dos jugadores
		When presiono el boton "Volver a Empezar"
		Then deberia ver el mensaje "Bienvenido a Tennis Scorer"
