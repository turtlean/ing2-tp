class Tecnico
	def initialize(unLibroDeJugadas = [])
		@libroDeJugadas = unLibroDeJugadas
	end

  def asignar_equipo(equipo)
    @equipo = equipo
  end

	def elegirJugadaOfensiva()
		unGeneradorDeJugadaOfensiva = @libroDeJugadas.obtenerGeneradorDeJugadaOfensiva()
		unGeneradorDeJugadaOfensiva.generarJugada(@equipo)
	end

  def elegirJugadaDefensiva(unaJugadaOfensivaRival)
    unGeneradorDeJugadaDefensiva = @libroDeJugadas.obtenerGeneradorDeJugadaDefensiva()
		unGeneradorDeJugadaDefensiva.generarJugada(@equipo, unaJugadaOfensivaRival)
  end
end
