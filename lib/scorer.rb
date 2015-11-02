class Scorer
  def initialize
    @puntajes = { 0 => '0', 1 => '15', 2 => '30', 3 => '40'}
    @puntaje1 = 0
    @puntaje2 = 0
  end

  def marcador_de_jugador(nro_jugador)
    if (nro_jugador == 1)
      mostrar_marcador(@puntaje1, @puntaje2)
    else
      mostrar_marcador(@puntaje2, @puntaje1)
    end
  end

  def anota_jugador(nro_jugador)
    if (nro_jugador == 1)
      if (advantage?(@puntaje2, @puntaje1))
        @puntaje2 -= 1
      else
        @puntaje1 += 1
      end
    else
      if (advantage?(@puntaje1, @puntaje2))
        @puntaje1 -= 1
      else
        @puntaje2 += 1
      end
    end
  end

  def mostrar_marcador(puntaje_a_mostrar, puntaje_adversario)
    if deuce?(puntaje_a_mostrar, puntaje_adversario)
      "Deuce"
    else
      if advantage?(puntaje_a_mostrar, puntaje_adversario)
        "Advantage"
      else
        if (puntaje_a_mostrar == 4)||(puntaje_a_mostrar == 5)
          "Ganador"
        else
          @puntajes[puntaje_a_mostrar]
        end
      end
    end
  end

  def deuce?(puntaje_a_mostrar, puntaje_adversario)
    puntaje_a_mostrar == 3 && puntaje_adversario == 3
  end

  def advantage?(puntaje_actual, puntaje_adversario)
    puntaje_actual == 4 && puntaje_adversario == 3
  end
end
