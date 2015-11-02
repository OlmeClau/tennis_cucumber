require 'spec_helper'
require 'scorer'

describe Scorer do
  before (:each) do
    @scorer = Scorer.new
  end
  it "empieza con ambos marcadores en 0" do
    expect(@scorer.marcador_de_jugador(1)).to eq("0")
    expect(@scorer.marcador_de_jugador(2)).to eq("0")
  end

  it "jugador 1 anota" do
    @scorer.anota_jugador(1)
    expect(@scorer.marcador_de_jugador(1)).to eq("15")
    expect(@scorer.marcador_de_jugador(2)).to eq("0")
  end

  it "jugador 2 anota dos veces" do
    @scorer.anota_jugador(1)
    @scorer.anota_jugador(2)
    @scorer.anota_jugador(2)
    expect(@scorer.marcador_de_jugador(1)).to eq("15")
    expect(@scorer.marcador_de_jugador(2)).to eq("30")
  end

  it "jugador1 anota 3 veces" do
    @scorer.anota_jugador(1)
    @scorer.anota_jugador(1)
    @scorer.anota_jugador(1)
    expect(@scorer.marcador_de_jugador(1)).to eq("40")
  end

  it "jugador2 anota 3 veces" do
    @scorer.anota_jugador(2)
    @scorer.anota_jugador(2)
    @scorer.anota_jugador(2)
    expect(@scorer.marcador_de_jugador(2)).to eq("40")
  end

  it "jugador1 y jugador 2 anotan 3 veces se muestra DEUCE" do
    @scorer.anota_jugador(1)
    @scorer.anota_jugador(1)
    @scorer.anota_jugador(1)
    @scorer.anota_jugador(2)
    @scorer.anota_jugador(2)
    @scorer.anota_jugador(2)
    expect(@scorer.marcador_de_jugador(1)).to eq("Deuce")
    expect(@scorer.marcador_de_jugador(2)).to eq("Deuce")
  end


  it "jugador1 en Advantage" do
    @scorer.anota_jugador(1)
    @scorer.anota_jugador(1)
    @scorer.anota_jugador(1)
    @scorer.anota_jugador(2)
    @scorer.anota_jugador(2)
    @scorer.anota_jugador(2)
    #Hasta aqui estaban en deuce
    @scorer.anota_jugador(1)
    expect(@scorer.marcador_de_jugador(1)).to eq("Advantage")
    expect(@scorer.marcador_de_jugador(2)).to eq("40")
  end

  it "jugador2 en Advantage" do
     @scorer.anota_jugador(2)
     @scorer.anota_jugador(2)
     @scorer.anota_jugador(2)
     @scorer.anota_jugador(1)
     @scorer.anota_jugador(1)
     @scorer.anota_jugador(1)
     #Hasta aqui estaban en deuce
     @scorer.anota_jugador(2)
     expect(@scorer.marcador_de_jugador(1)).to eq("40")
     expect(@scorer.marcador_de_jugador(2)).to eq("Advantage")
   end

   it "jugador1 vuelve a deuce desde Advantage" do
       @scorer.anota_jugador(1)
       @scorer.anota_jugador(1)
       @scorer.anota_jugador(1)
       @scorer.anota_jugador(2)
       @scorer.anota_jugador(2)
       @scorer.anota_jugador(2)
       #Hasta aqui estaban en deuce
       @scorer.anota_jugador(1)
       @scorer.anota_jugador(2)
       expect(@scorer.marcador_de_jugador(1)).to eq("Deuce")
       expect(@scorer.marcador_de_jugador(2)).to eq("Deuce")
     end

     it "jugador1 gana" do
       @scorer.anota_jugador(1)
       @scorer.anota_jugador(1)
       @scorer.anota_jugador(1)
       @scorer.anota_jugador(1)
       expect(@scorer.marcador_de_jugador(1)).to eq("Ganador")
     end

     it "jugador2 gana" do
        @scorer.anota_jugador(2)
        @scorer.anota_jugador(2)
        @scorer.anota_jugador(2)
        @scorer.anota_jugador(2)
        expect(@scorer.marcador_de_jugador(2)).to eq("Ganador")
      end

      it "jugador1 gana desde Advantage" do
        @scorer.anota_jugador(1)
        @scorer.anota_jugador(1)
        @scorer.anota_jugador(1)
        @scorer.anota_jugador(2)
        @scorer.anota_jugador(2)
        @scorer.anota_jugador(2)
        #Hasta aqui en Deuce
        @scorer.anota_jugador(1)
        #Hasta aqui jugador 1 en Advantage
        @scorer.anota_jugador(1)
        expect(@scorer.marcador_de_jugador(1)).to eq("Ganador")
      end

      it "jugador2 gana desde Advantage" do
        @scorer.anota_jugador(2)
        @scorer.anota_jugador(2)
        @scorer.anota_jugador(2)
        @scorer.anota_jugador(1)
        @scorer.anota_jugador(1)
        @scorer.anota_jugador(1)
        #Hasta aqui en Deuce
        @scorer.anota_jugador(2)
        #Hasta aqui jugador 2 en Advantage
        @scorer.anota_jugador(2)
        expect(@scorer.marcador_de_jugador(2)).to eq("Ganador")
      end

     
end
